$(document).ready(function () {


    var label = "heading";
    var label1 = "collapse";


    var employeeIdLabel = "jobExp";
    var educIdLabel = "education";
    var socialIdLabel = "social";
    var skillIdLabel = "skill";
    var referenceIdLabel = "reference";

    var employeeHistoryCounterId = 0;
    var educationCounter = 0;
    var socialCounter = 0;
    var skillCounter = 0;
    var referenceCounter = 0;

    $("#addEmploy").click(function () {
        if ($("#employeeHistoryAccordion").children().length < 3) {
            appendEmpHistory(employeeIdLabel, label, label1, employeeHistoryCounterId);
        }
    });

    $("#addEduc").click(function () {

        if ($("#education").children().length < 3) {
            appendEducation(educIdLabel, label, label1, educationCounter);
        }
    });

    $("#addSocial").click(function () {
        if ($("#social").children().length < 3) {
            appendSocial(label, label1, socialIdLabel, socialCounter);
        }
    });

    $("#addSkill").click(function () {
        if ($("#skill").children().length < 10) {
            appendSkill(label, label1, skillIdLabel, skillCounter);
        }
    });

    $("#addReference").click(function () {
        if ($("#reference").children().length < 3) {
            appendReference(label, label1, referenceIdLabel, referenceCounter);
        }
    });


    $("#removeEmploy").click(function () {
        if (employeeHistoryCounterId > 0) {
            employeeHistoryCounterId--;
            if ($("#employeeHistoryAccordion").children().length == 3) {
                $(".jobAccodionItem" + employeeHistoryCounterId).remove();
            }
            if ($("#employeeHistoryAccordion").children().length == 2) {
                $(".jobAccodionItem" + employeeHistoryCounterId).remove();
            }
            if ($("#employeeHistoryAccordion").children().length == 1) {
                $(".jobAccodionItem" + employeeHistoryCounterId).remove();
            }

        }
    });

    $("#removeEduc").click(function () {
        if (educationCounter > 0) {
            educationCounter--;
            if ($("#education").children().length == 3) {
                $(".accordionEduc" + educationCounter).remove();
            }
            if ($("#education").children().length == 2) {
                $(".accordionEduc" + educationCounter).remove();
            }
            if ($("#education").children().length == 1) {
                $(".accordionEduc" + educationCounter).remove();
            }

        }
    });

    $("#removeSocial").click(function () {
        if (socialCounter > 0) {
            socialCounter--;
            if ($("#social").children().length == 3) {
                $(".accordionSocial" + socialCounter).remove();
            }
            if ($("#social").children().length == 2) {
                $(".accordionSocial" + socialCounter).remove();
            }
            if ($("#social").children().length == 1) {
                $(".accordionSocial" + socialCounter).remove();
            }

        }
    });

    $("#removeReference").click(function () {
        if (referenceCounter > 0) {
            referenceCounter--;
            if ($("#reference").children().length == 3) {
                $(".accordionReference" + referenceCounter).remove();
            }
            if ($("#reference").children().length == 2) {
                $(".accordionReference" + referenceCounter).remove();
            }
            if ($("#reference").children().length == 1) {
                $(".accordionReference" + referenceCounter).remove();
            }

        }
    });



    $("#removeSkill").click(function () {
        if (skillCounter > 0) {

            skillCounter--;
            if ($("#skill").children().length == 1) {
                $(".accordionSkill" + skillCounter).remove();
            }
            if ($("#skill").children().length == 2) {
                $(".accordionSkill" + skillCounter).remove();
            }
            if ($("#skill").children().length == 3) {
                $(".accordionSkill" + skillCounter).remove();
            }
            if ($("#skill").children().length == 4) {
                $(".accordionSkill" + skillCounter).remove();
            }
            if ($("#skill").children().length == 5) {
                $(".accordionSkill" + skillCounter).remove();
            }
            if ($("#skill").children().length == 6) {
                $(".accordionSkill" + skillCounter).remove();
            }
            if ($("#skill").children().length == 7) {
                $(".accordionSkill" + skillCounter).remove();
            }
            if ($("#skill").children().length == 8) {
                $(".accordionSkill" + skillCounter).remove();
            }
            if ($("#skill").children().length == 9) {
                $(".accordionSkill" + skillCounter).remove();
            }
            if ($("#skill").children().length == 0) {
                $(".accordionSkill" + skillCounter).remove();
            }
        }
    });

    function appendEmpHistory(titleid, label, label1, counter) {
        var employeeHistory =
            '<div class="accordion-item jobAccodionItem' + employeeHistoryCounterId + '"> \
<h2 class="accordion-header" id="' + titleid + label + counter + '"> \
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#' + titleid + label1 + counter + '" aria-expanded="false" aria-controls="' + titleid + label1 + counter + '"> \
        <span id = "AccordionWorkTitleLabel'+ counter + '"style = "text-transform: uppercase;" >(Not Specified)</span>\
    </button> \
</h2> \
<div id="' + titleid + label1 + counter + '" class="accordion-collapse collapse" aria-labelledby="' + titleid + label + counter + '" data-bs-parent="#employeeHistoryAccordion"> \
    <div class="accordion-body">\
        <div class="row mb-2">\
            <div class="col">\
                <label class="form-label ">Job title</label>\
                <input type="text" class="form-control jobTitle" id="jobTitle' + counter + '">\
                <div class="invalid-feedback">\
                </div>\
            </div>\
            <div class="col">\
                <label class="form-label ">Employer</label>\
                <input type="text" class="form-control employerName" id="employerName' + counter + '">\
                <div class="invalid-feedback">\
                </div>\
            </div>\
        </div>\
        <div class="row mb-4">\
            <div class="col-3">\
                <label class="form-label ">Start Date (Optional)</label>\
                <input type="text" class="form-control startDate" id = "startDate' + counter + '">\
                <div class="invalid-feedback">\
                </div>\
            </div>\
            <div class="col-3">\
                <label class="form-label ">End Date (Optional)</label>\
                <input type="text" class="form-control endDate" id = "endDate' + counter + '">\
                <div class="invalid-feedback">\
                </div>\
            </div>\
            <div class="col-6">\
                <label class="form-label ">City</label>\
                <input type="text" class="form-control employerCity" id = "employerCity' + counter + '">\
                <div class="invalid-feedback">\
                </div>\
            </div>\
        </div>\
        <div class="row mb-5">\
            <div class="col">\
                <label class="form-label ">Description</label>\
                <textarea name="" class="form-control employeeEditor" id="employeeEditor" style="height: 100px"></textarea>\
                </div>\
            </div>\
        </div>\
        <div class="row justify-content-end">\
        <div class="col-2"></div>\
        </div>\
    </div>\
</div>\
</div>';

        $('#employeeHistoryAccordion').append(employeeHistory);
        employeeHistoryCounterId++;
    }

    function appendEducation(titleid, label, label1, counter) {
        var education =
            '<div class="accordion-item accordionEduc' + educationCounter + '"> \
<h2 class="accordion-header" id="' + titleid + label + counter + '"> \
    <button class="accordion-button collapsed AccordionEducTitleLabel" type="button" data-bs-toggle="collapse" data-bs-target="#' + titleid + label1 + counter + '" aria-expanded="false" aria-controls="' + titleid + label1 + counter + '"> \
        <span id = "AccordionEducTitleLabel'+ counter + '"style = "text-transform: uppercase;" >(Not Specified)</span>\
    </button> \
</h2> \
<div id="' + titleid + label1 + counter + '" class="accordion-collapse collapse" aria-labelledby="' + titleid + label + counter + '" data-bs-parent="#education"> \
    <div class="accordion-body">\
        <div class="row mb-2">\
            <div class="col">\
                <label class="form-label ">School</label>\
                <input type="text" class="form-control school" id="school' + counter + '">\
                <div class="invalid-feedback">\
                </div>\
            </div>\
            <div class="col">\
                <label class="form-label ">Degree</label>\
                <input type="text" class="form-control degree" id="degree ' + counter + ' ">\
                <div class="invalid-feedback">\
                </div>\
            </div>\
        </div>\
        <div class="row mb-4">\
            <div class="col-3">\
                <label class="form-label ">Start Date</label>\
                <input type="text" class="form-control educStartDate" id = "educStartDate' + counter + '">\
                <div class="invalid-feedback">\
                </div>\
            </div>\
            <div class="col-3">\
                <label class="form-label ">End Date</label>\
                <input type="text" class="form-control educEndDate" id = "educEndDate' + counter + '">\
                <div class="invalid-feedback">\
                </div>\
            </div>\
            <div class="col-6">\
                <label class="form-label ">City</label>\
                <input type="text" class="form-control educCity" id = "educCity' + counter + '">\
                <div class="invalid-feedback">\
                </div>\
            </div>\
        </div>\
    </div>\
</div>\
</div>';
        //Add kapag lagay description
        /* <div class="row mb-5">\
        <div class="col">\
            <label class="form-label ">Description</label>\
            <div id="educationEditor' + counter + '" class ="educationEditor">\
            </div>\
        </div>\
        </div>\
        <div class="row mb-4"></div>\ */
        $('#education').append(education);
        educationCounter++;
    }

    function appendSocial(label, label1, titleid, counter) {
        var social = '<div class="accordion-item accordionSocial' + socialCounter + '"> \
        <h2 class="accordion-header" id="' + titleid + label + counter + '"> \
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#' + titleid + label1 + counter + '" aria-expanded="false" aria-controls="' + titleid + label1 + counter + '"> \
            <span id = "AccordionSocialTitleLabel'+ counter + '"style = "text-transform: uppercase;" >(Not Specified)</span>\
            </button> \
        </h2> \
        <div id="' + titleid + label1 + counter + '" class="accordion-collapse collapse" aria-labelledby="' + titleid + label + counter + '" data-bs-parent="#social"> \
            <div class="accordion-body">\
                <div class="row mb-2">\
                    <div class="col">\
                        <label class="form-label ">Link</label>\
                        <input type="text" class="form-control socialLink" id="socialLink' + counter + ' ">\
                        <div class="invalid-feedback">\
                        </div>\
                    </div>\
                </div>\
            </div>\
        </div>\
        </div>';
        $('#social').append(social);

        socialCounter++;
    }

    function appendSkill(label, label1, titleid, counter) {
        var skill = '<div class="accordion-item accordionSkill' + skillCounter + '"> \
        <h2 class="accordion-header" id="' + titleid + label + counter + '"> \
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#' + titleid + label1 + counter + '" aria-expanded="false" aria-controls="' + titleid + label1 + counter + '"> \
            <span id = "AccordionSkillTitleLabel'+ counter + '"style = "text-transform: uppercase;" >(Not Specified)</span>\
            </button> \
        </h2> \
        <div id="' + titleid + label1 + counter + '" class="accordion-collapse collapse" aria-labelledby="' + titleid + label + counter + '" data-bs-parent="#skill"> \
            <div class="accordion-body">\
                <div class="row mb-2">\
                    <div class="col">\
                        <label class="form-label ">Skill</label>\
                        <input type="text" class="form-control skilltitle" id="skilltitle' + counter + '">\
                        <div class="invalid-feedback">\
                        </div>\
                    </div>\
                </div>\
            </div>\
        </div>\
        </div>';
        $('#skill').append(skill);
        skillCounter++;
    }

    function appendReference(label, label1, titleid, counter) {
        var reference = '<div class="accordion-item accordionReference' + referenceCounter + '"> \
        <h2 class="accordion-header" id="' + titleid + label + counter + '"> \
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#' + titleid + label1 + counter + '" aria-expanded="false" aria-controls="' + titleid + label1 + counter + '"> \
            <span id = "AccordionReferenceTitleLabel'+ counter + '"style = "text-transform: uppercase;" >(Not Specified)</span>\
            </button> \
        </h2> \
        <div id="' + titleid + label1 + counter + '" class="accordion-collapse collapse" aria-labelledby="' + titleid + label + counter + '" data-bs-parent="#reference"> \
            <div class="accordion-body">\
                <div class="row mb-2">\
                    <div class="col">\
                        <label class="form-label ">Referent\'s Fullname</label>\
                        <input type="text" class="form-control refname" id="refname' + counter + '">\
                        <div class="invalid-feedback">\
                        </div>\
                    </div>\
                    <div class="col">\
                        <label class="form-label ">Company</label>\
                        <input type="text" class="form-control refcompany" id="refcompany' + counter + '">\
                        <div class="invalid-feedback">\
                        </div>\
                    </div>\
                </div>\
                <div class="row mb-2">\
                    <div class="col">\
                        <label class="form-label ">Phone</label>\
                        <input type="text" class="form-control refPhone" id="refPhone' + counter + '">\
                        <div class="invalid-feedback">\
                        </div>\
                    </div>\
                    <div class="col">\
                        <label class="form-label ">Email</label>\
                        <input type="text" class="form-control refEmail" id="refEmail' + counter + '">\
                        <div class="invalid-feedback">\
                        </div>\
                    </div>\
                </div>\
            </div>\
        </div>\
        </div>';
        $('#reference').append(reference);
        referenceCounter++;
    }
});