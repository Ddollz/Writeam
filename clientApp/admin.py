from django.contrib import admin
from .models import personalDetails, employmentHistory, education, skill, link, reference
# Register your models here.
admin.site.register(personalDetails)
admin.site.register(employmentHistory)
admin.site.register(education)
admin.site.register(skill)
admin.site.register(link)
admin.site.register(reference)
