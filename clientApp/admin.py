from django.contrib import admin
from .models import personalDetails, employmentHistory, education, skill, link, reference
# Register your models here.


class personalDetailsAdmin(admin.ModelAdmin):
    list_display = ('accounts', 'jobTitle')
    fieldsets = (
    )
    add_fieldsets = (
    )


class employmentHistoryAdmin(admin.ModelAdmin):
    list_display = ('personaldetails', 'employer')
    fieldsets = (
    )
    add_fieldsets = (
    )


admin.site.register(personalDetails, personalDetailsAdmin)
admin.site.register(employmentHistory, employmentHistoryAdmin)
admin.site.register(education)
admin.site.register(skill)
admin.site.register(link)
admin.site.register(reference)
