from django.contrib import admin
from .models import onboardingApplicant
# Register your models here.


class onboardingApplicantAdmin(admin.ModelAdmin):
    list_display = ('id', 'accounts', 'jobTitle',
                    'score', 'status', 'dateScore')
    readonly_fields = ('id', 'dateScore',)
    search_fields = ('jobTitle',)
    fieldsets = (
    )
    add_fieldsets = (
    )


admin.site.register(onboardingApplicant, onboardingApplicantAdmin)
