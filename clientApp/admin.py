from django.contrib import admin
from .models import personalDetails, employmentHistory, education, skill, link, reference
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


admin.site.register(personalDetails, personalDetailsAdmin)
admin.site.register(employmentHistory, employmentHistoryAdmin)
admin.site.register(education, educationAdmin)
admin.site.register(skill)
admin.site.register(link, linkAdmin)
admin.site.register(reference)
