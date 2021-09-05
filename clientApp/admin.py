from django.contrib import admin
from .models import personalDetails, employmentHistory, education, skill, link, reference
# Register your models here.


class test(admin.ModelAdmin):
    list_display = ('accounts', 'jobTitle')
    fieldsets = (
    )
    add_fieldsets = (
    )


admin.site.register(personalDetails, test)
admin.site.register(employmentHistory)
admin.site.register(education)
admin.site.register(skill)
admin.site.register(link)
admin.site.register(reference)
