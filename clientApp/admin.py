from django.contrib import admin
from .models import *
# Register your models here.


class personalDetailsAdmin(admin.ModelAdmin):
    list_display = ('accounts', 'jobTitle', 'fname',
                    'lname', 'city', 'email', 'phone')

    search_fields = ('JobTitle', 'city')
    list_filter = ('city',)
    readonly_fields = ('id',)
    fieldsets = (
    )
    add_fieldsets = (
    )


class employmentHistoryAdmin(admin.ModelAdmin):
    list_display = ('id', 'personaldetails', 'JobTitle', 'city',
                    'employer', 'start_date', 'end_date')
    search_fields = ('JobTitle', 'city', 'employer',)
    readonly_fields = ('id', 'start_date', 'end_date')
    fieldsets = (
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('personaldetails', 'JobTitle', 'city', 'employer', 'start_date', 'end_date')}
         ),
    )
    list_filter = ("JobTitle", 'city', 'start_date', 'end_date',)


class educationAdmin(admin.ModelAdmin):
    list_display = ('id', 'personaldetails', 'school', 'city',
                    'degree', 'start_date', 'end_date')
    search_fields = ('school', 'city', 'degree',)
    readonly_fields = ('id', 'start_date', 'end_date')
    fieldsets = (
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('personaldetails', 'school', 'city', 'degree', 'start_date', 'end_date')}
         ),
    )
    list_filter = ("school", 'city', 'start_date', 'end_date',)


class linkAdmin(admin.ModelAdmin):
    list_display = ('id', 'link')
    readonly_fields = ('id',)
    fieldsets = (
    )
    add_fieldsets = (
    )


class referenceAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'company', 'phone',
                    'email')
    search_fields = ('company',)
    readonly_fields = ('id',)
    fieldsets = (
    )
    add_fieldsets = (
    )
    list_filter = ("company",)


class skillAdmin(admin.ModelAdmin):
    list_display = ('id', 'skill')
    readonly_fields = ('id',)
    fieldsets = (
    )
    add_fieldsets = (
    )


class articleAdmin(admin.ModelAdmin):
    list_display = ('id', 'headline', 'article')
    readonly_fields = ('id',)
    search_fields = ('headline',)
    fieldsets = (
    )
    add_fieldsets = (
    )


class jobAppAdmin(admin.ModelAdmin):
    list_display = ('id', 'accounts',
                    'is_copywriter', 'copywriter', 'copywriterfinal',
                    'is_editor', 'editor', 'editorfinal',
                    'is_translator', 'translator', 'translatorfinal',
                    'article',
                    'dateSubmit', 'submitApplication', 'jobAccepted')
    readonly_fields = ('id',)
    search_fields = ('jobTitle', 'submitApplication', 'jobAccepted')
    fieldsets = (
    )
    add_fieldsets = (
    )


admin.site.register(personalDetails, personalDetailsAdmin)
admin.site.register(employmentHistory, employmentHistoryAdmin)
admin.site.register(education, educationAdmin)
admin.site.register(skill, skillAdmin)
admin.site.register(link, linkAdmin)
admin.site.register(reference, referenceAdmin)
admin.site.register(article, articleAdmin)
admin.site.register(jobapplication, jobAppAdmin)
