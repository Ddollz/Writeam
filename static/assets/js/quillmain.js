$(document).ready(function () {


    var label = "heading";
    var label1 = "collapse";


    var skillIdLabel = "skill";
    var referenceIdLabel = "reference";

    var skillCounter = 0;
    var referenceCounter = 0;

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