from django.contrib.auth.tokens import PasswordResetTokenGenerator
import six

import threading
from django.core.mail import EmailMessage


class tokenGenerator(PasswordResetTokenGenerator):

    def _make_hash_value(self, user, timestamp):
        return six.text_type(user.pk)+six.text_type(timestamp)+six.text_type(user.is_email_verified)


generate_token = tokenGenerator()


class EmailThread(threading.Thread):
    def __init__(self, subject, html_content, recipient_list, sender):
        self.subject = subject
        self.recipient_list = recipient_list
        self.html_content = html_content
        self.sender = sender
        threading.Thread.__init__(self)

    def run(self):
        msg = EmailMessage(self.subject, self.html_content,
                           self.sender, self.recipient_list)
        msg.send()


def send_html_mail(subject, html_content, recipient_list, sender):
    EmailThread(subject, html_content, recipient_list, sender).start()
