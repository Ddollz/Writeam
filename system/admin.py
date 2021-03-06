from django.contrib import admin
from .models import *


class jobListAdmin(admin.ModelAdmin):
    list_display = ('id', 'job_Title', 'job_Description',
                    'is_onHire')
    readonly_fields = ('id',)
    search_fields = ('id', 'job_Title',)
    fieldsets = (
    )
    add_fieldsets = (
    )


class jobSkillAdmin(admin.ModelAdmin):
    list_display = ('id', 'skill_name', 'job_Title',
                    )
    readonly_fields = ('id',)
    search_fields = ('id', 'job_Title', 'skill_name')
    fieldsets = (
    )
    add_fieldsets = (
    )


class manpowerAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'job_Title', 'requestDate', 'nosCandidate', 'currentCandidate', 'lastSubmitted', 'is_Finished'
                    )
    readonly_fields = ('id', 'lastSubmitted')
    search_fields = ('id', 'name', 'department', 'requestDate',
                     'expectedDate',)
    fieldsets = (
    )
    add_fieldsets = (
    )


class contactAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'email', 'subject', 'message', 'lastSubmitted'
                    )
    readonly_fields = ('id', 'lastSubmitted')
    search_fields = ('id', 'name',)
    fieldsets = (
    )
    add_fieldsets = (
    )


admin.site.register(jobList, jobListAdmin)
admin.site.register(jobSkill, jobSkillAdmin)
admin.site.register(manpower, manpowerAdmin)
admin.site.register(contact, contactAdmin)
