$(document).ready(function () {

    //for progress bar
    nameTemp = true;
    contactTemp = true;
    addressTemp = true;
    birthTemp = true;


    function updateProgressBar(value, curVal, type) {
        if (type == 1) {
            curVal = parseFloat(curVal.replace(/[^0-9.]/g, ""));
            value = parseFloat(value);
            value += curVal;
            if (Math.round(value) !== value) {
                value = value.toFixed(2);
            }
            if (value >= 40) {
                $(".progress__fill").css("background-color", "#ffd167");
                $(".progress__percent").css("color", "#ffd167");
            }
            if (value >= 80) {
                $(".progress__fill").css("background-color", "#25b869");
                $(".progress__percent").css("color", "#25b869");
            }
            $(".progress__fill").width(`${value}%`);

            $(".progress__percent").text(`${value}%`);
        } else if (type == 0) {
            curVal = parseFloat(curVal.replace(/[^0-9.]/g, ""));
            value = parseFloat(value);
            curVal -= value;
            if (Math.round(curVal) !== curVal) {
                curVal = curVal.toFixed(2);
            }
            if (value < 40) {
                $(".progress__fill").css("background-color", "#e74c3c");
                $(".progress__percent").css("color", "#e74c3c");
            }
            if (value < 80 && $("#progFill").hasClass("progress__fill-almost")) {
                $(".progress__fill").css("background-color", "#ffd167");
                $(".progress__percent").css("color", "#ffd167");
            }
            $(".progress__fill").width(`${curVal}%`);
            $(".progress__percent").text(`${curVal}%`);

        }
    }


    $("#email").change(function () {
        checkcontact();
    });
    $("#phone").change(function () {
        checkcontact();
    });
    $("#country").change(function () {
        checkaddress();
    });
    $("#city").change(function () {
        checkaddress();
    });
    $("#address").change(function () {
        checkaddress();
    });
    $("#postal").change(function () {
        checkaddress();
    });
    $("#pdate").change(function () {
        checkbirth();
    });
    $("#bdate").change(function () {
        checkbirth();
    });


    function checkcontact() {
        if (($("#email").val() != '' && $("#phone").val() != '') && contactTemp) {
            updateProgressBar("1.67", $(".progress__percent").text(), 1);
        }
        if ($("#email").val() == '' && $("#phone").val() == '') {
            updateProgressBar("1.67", $(".progress__percent").text(), 0);
            contactTemp = true;
        } else if ($("#email").val() != '' && $("#phone").val() != '')
            contactTemp = false;
    }

    function checkaddress() {
        if (($("#country").val() != '' && $("#city").val() != '' && $("#address").val() != '' && $("#postal").val() != '') && addressTemp) {
            updateProgressBar("1.67", $(".progress__percent").text(), 1);
        }
        if ($("#country").val() == '' && $("#city").val() == '' && $("#address").val() == '' && $("#postal").val() == '') {
            updateProgressBar("1.67", $(".progress__percent").text(), 0);
            addressTemp = true;
        } else if ($("#country").val() != '' && $("#city").val() != '' && $("#address").val() != '' && $("#postal").val() != '')
            addressTemp = false;
    }

    function checkbirth() {
        if (($("#pdate").val() != '' && $("#bdate").val() != '') && birthTemp) {
            updateProgressBar("1.67", $(".progress__percent").text(), 1);
        }
        if ($("#pdate").val() == '' && $("#bdate").val() == '') {
            updateProgressBar("1.67", $(".progress__percent").text(), 0);
            birthTemp = true;
        } else if ($("#pdate").val() != '' && $("#bdate").val() != '')
            birthTemp = false;
    }


    $('#bdate').datepicker(
        {
            dateFormat: "MM yy",
            changeMonth: true,
            changeYear: true,
            showButtonPanel: true,
            onClose: function (dateText, inst) {


                function isDonePressed() {
                    return ($('#ui-datepicker-div').html().indexOf('ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all ui-state-hover') > -1);
                }

                if (isDonePressed()) {
                    var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                    var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                    $(this).datepicker('setDate', new Date(year, month, 1)).trigger('change');

                    $('.date-picker').focusout()//Added to remove focus from datepicker input box on selecting date
                }
            },
            beforeShow: function (input, inst) {

                inst.dpDiv.addClass('month_year_datepicker')

                if ((datestr = $(this).val()).length > 0) {
                    year = datestr.substring(datestr.length - 4, datestr.length);
                    month = datestr.substring(0, 2);
                    $(this).datepicker('option', 'defaultDate', new Date(year, month - 1, 1));
                    $(this).datepicker('setDate', new Date(year, month - 1, 1));
                    $(".ui-datepicker-calendar").hide();
                }
                $(".ui-datepicker-calendar").hide();
            }
        });

    const next = document.querySelectorAll('.next');
    const back = document.querySelectorAll('.back');
    const pages = document.querySelectorAll('.page');

    var pageNo = 0;

    for (const i of next) {
        i.addEventListener('click', nextPage);
    }
    for (const i of back) {
        i.addEventListener('click', backPage);
    }

    function nextPage() {
        if (pageNo < pages.length - 1) {
            $(this).parentsUntil(".page").parent(".page").hide();
            pageNo++;
            $(pages[pageNo]).fadeIn("slow");
        }
    }

    function backPage() {
        if (pageNo > 0) {
            $(this).parentsUntil(".page").parent(".page").hide();
            pageNo--;
            $(pages[pageNo]).fadeIn("slow");
        }
    }

    $('#return').click(function () {
        $("[size='A4']").remove();
        $("#main").hide();
        $(".split-screen").show();
    });

    //Profile Picture

    pictureTemp = true;
    $(function () {
        $('#profile').addClass('dragging').removeClass('dragging');
    });

    $('#profile').on('dragover', function () {
        $('#profile').addClass('dragging')
    }).on('dragleave', function () {
        $('#profile').removeClass('dragging')
    }).on('drop', function (e) {
        $('#profile').removeClass('dragging hasImage');

        if (e.originalEvent) {
            var file = e.originalEvent.dataTransfer.files[0];

            var reader = new FileReader();

            //attach event handlers here...

            reader.readAsDataURL(file);
            reader.onload = function (e) {
                $('#profile').css('background-image', 'url(' + reader.result + ')').addClass('hasImage');

            }

        }
    })
    $('#profile').on('click', function (e) {
        $('#mediaFile').click();
    });
    window.addEventListener("dragover", function (e) {
        e = e || event;
        e.preventDefault();
    }, false);
    window.addEventListener("drop", function (e) {
        e = e || event;
        e.preventDefault();
    }, false);

    $('#mediaFile').change(function (e) {

        var input = e.target;
        if (input.files && input.files[0]) {
            var file = input.files[0];

            var reader = new FileReader();

            reader.readAsDataURL(file);
            reader.onload = function (e) {
                $('#profile').css('background-image', 'url(' + reader.result + ')').addClass('hasImage');
                $(".profile").attr('src', reader.result);
            }
        }

        if ($(this).val() != '' && pictureTemp) {
            updateProgressBar("8", $(".progress__percent").text(), 1);
        }
        if ($(this).val() == '') {
            updateProgressBar("8", $(".progress__percent").text(), 0);
            pictureTemp = true;
        } else
            pictureTemp = false;

    })

    //jobTitle = jobWant
    jobTemp = true;

    // ! Update
    $("#jobWant").html($('#jobTitle').val());
    $("#fullname").html($('#fname').val() + " " + $('#lname').val());
    $("#preAddress").html($('#address').val());
    $("#preCountry").html($('#country').val());
    $("#preCityPC").html($('#city').val() + ", " + $('#postal').val());
    $("#preEmail").html($('#email').val());
    $("#preNumber").html($('#phone').val());
    $("#profileDesc").html($('#summaryEditor').val());

    $('#jobTitle').change(function (e) {
        $("#jobWant").html($('#jobTitle').val());

        if ($(this).val() != '' && jobTemp) {
            updateProgressBar("8", $(".progress__percent").text(), 1);
        }
        if ($(this).val() == '') {
            updateProgressBar("8", $(".progress__percent").text(), 0);
            jobTemp = true;
        } else
            jobTemp = false;
    })

    //name
    $('#fname').change(function (e) {
        $("#fullname").html($('#fname').val() + " " + $('#lname').val());
        checkname();
    })
    $('#lname').change(function (e) {
        $("#fullname").html($('#fname').val() + " " + $('#lname').val());
        checkname();
    })


    function checkname() {
        if (($("#fname").val() != '' && $("#lname").val() != '') && nameTemp) {
            updateProgressBar("1.67", $(".progress__percent").text(), 1);
        }
        if ($("#fname").val() == '' && $("#lname").val() == '') {
            updateProgressBar("1.67", $(".progress__percent").text(), 0);
            nameTemp = true;
        } else if ($("#fname").val() != '' && $("#lname").val() != '')
            nameTemp = false;
    }

    //Details

    // preAddress = address
    // preCityPC = city, postal
    // preCountry = country
    // preEmail = email
    // preNumber = phone
    // pdate bdate = preBirthday
    //national = preNationality
    //license = preDriLicense
    emptyPreEmail();
    emptyPreAddress();
    emptyPrePhone();
    $('#address').change(function (e) {
        $("#preAddress").html($('#address').val());
        emptyPreAddress();
    })
    $('#country').change(function (e) {
        $("#preCountry").html($('#country').val());
        emptyPreAddress();
    })
    $('#city').change(function (e) {
        $("#preCityPC").html($('#city').val() + ", " + $('#postal').val());
        emptyPreAddress();
    })
    $('#postal').change(function (e) {
        $("#preCityPC").html($('#city').val() + ", " + $('#postal').val());
        emptyPreAddress();
    })
    $('#email').change(function (e) {
        $("#preEmail").html($('#email').val());
        emptyPreEmail();
    })
    $('#phone').change(function (e) {
        $("#preNumber").html($('#phone').val());
        emptyPrePhone();
    })

    function emptyPreAddress() {
        if ($('#preAddress').text().length == 0 && $('#preCountry').text().length == 0 && $('#preCityPC').text().length == 0 &&
            $('#postal').text().length == 0) {
            $('.mailboxDiv').hide();
        } else {
            $('.mailboxDiv').show();
        }
    }
    function emptyPreEmail() {
        if ($('#preEmail').text().length == 0) {
            $('.envelopeDiv').hide();
        } else {
            $('.envelopeDiv').show();
        }
    }
    function emptyPrePhone() {
        if ($('#preNumber').text().length == 0) {
            $('.phoneDiv').hide();
        } else {
            $('.phoneDiv').show();
        }
    }
    emptyPreBirthDate();
    $('#pdate').change(function (e) {
        emptyPreBirthDate();
    })
    $('#bdate').change(function (e) {
        emptyPreBirthDate();
    })

    function emptyPreBirthDate() {
        if ($('#bdate').val() == "" && $('#pdate').val() == "") {
            $("#dateDivider").hide();
        } else {
            $("#dateDivider").show();
            $("#preBirthday").html($('#pdate').val() + ", " + $('#bdate').val());
        }
    }
    emptyPreNationality();
    $('#national').change(function (e) {
        emptyPreNationality();
    })

    function emptyPreNationality() {
        if ($('#national').val() == "") {
            $("#nationalDivider").hide();
        } else {
            $("#nationalDivider").show();
            $("#preNationality").html($('#national').val());
        }
    }
    // $('#license').change(function (e) {
    //     if ($('#license').val() == "") {
    //         $("#licenseDivider").hide();
    //     } else {
    //         $("#licenseDivider").show();
    //         $("#preDriLicense").html($('#license').val());
    //     }
    // })



    //Summary
    var summaryEditor = $("#summaryEditor");

    //profileDesc
    summaryTemp = true;
    if (summaryEditor.val().length <= 0) {
        $(".profileDiv").hide();
    }
    summaryEditor.on('input propertychange', function () {

        if (summaryEditor.val().length > 1) {
            $(".profileDiv").show();
            if (summaryTemp) {
                updateProgressBar("16", $(".progress__percent").text(), 1);
                summaryTemp = false;
            }
            summaryTemp = false;
        } else {
            $(".profileDiv").hide();

            if (!summaryTemp) {
                updateProgressBar("16", $(".progress__percent").text(), 0);
                summaryTemp = true;
            }
        }
        $("#profileDesc").html(summaryEditor.val());
    });


    //jobTitle
    //employerName
    //startDate
    //endDate
    //employeeCity
    //AccordionTitleLabel
    //experienceDiv
    var preJobTitle = $('.jobTitle');
    var workStartdate = $('.startDate');
    var workEnddate = $('.endDate');
    var employerName = $('.employerName');
    var employerCity = $('.employerCity');

    $(".jobTitle").each(function (index) {
        // console.log(index + ": " + $(this).val());

        if ($($('.jobTitle')[index]).val().length > 0 && index == 0) {
            $("#AccordionWorkTitleLabel0").html($(this).val());
            $("#preWorkTitle0").html($($('.jobTitle')[index]).val());
            $('.preWorkSub0').show();
            $('.experienceDiv').show();
        } else {
            $('.preWorkSub0').hide();
        }
        if ($($('.jobTitle')[index]).val().length > 0 && index == 1) {
            $("#AccordionWorkTitleLabel1").html($(this).val());
            $("#preWorkTitle1").html($($('.jobTitle')[index]).val());
            $('.preWorkSub1').show();
            $('.experienceDiv').show();
        } else {
            $('.preWorkSub1').hide();
        }
        if ($($('.jobTitle')[index]).val().length > 0 && index == 2) {
            $("#AccordionWorkTitleLabel2").html($(this).val());
            $("#preWorkTitle2").html($($('.jobTitle')[index]).val());
            $('.preWorkSub2').show();
            $('.experienceDiv').show();
        } else {
            $('.preWorkSub2').hide();
        }
        if ($('.preWorkSub2').is(":hidden") && $('.preWorkSub1').is(":hidden") && $('.preWorkSub0').is(":hidden")) {
            $('.experienceDiv').hide();
        }

        if ($($('.employerName')[index]).val().length > 0 && index == 0) {
            $("#preEmployer0").html($($('.employerName')[index]).val());
        }
        if ($($('.employerName')[index]).val().length > 0 && index == 1) {
            $("#preEmployer1").html($($('.employerName')[index]).val());
        }
        if ($($('.employerName')[index]).val().length > 0 && index == 2) {
            $("#preEmployer2").html($($('.employerName')[index]).val());
        }

        if ($($('.employerCity')[index]).val().length > 0 && index == 0) {
            $("#preWorkCity0").html($($('.employerCity')[index]).val());
        }
        if ($($('.employerCity')[index]).val().length > 0 && index == 1) {
            $("#preWorkCity1").html($($('.employerCity')[index]).val());
        }
        if ($($('.employerCity')[index]).val().length > 0 && index == 2) {
            $("#preWorkCity2").html($($('.employerCity')[index]).val());
        }

        if ($($('.startDate')[index]).val().length > 0 && index == 0) {
            $("#preWorkstartDate0").html($($('.startDate')[index]).val());
        }
        if ($($('.startDate')[index]).val().length > 0 && index == 1) {
            $("#preWorkstartDate1").html($($('.startDate')[index]).val());
        }
        if ($($('.startDate')[index]).val().length > 0 && index == 2) {
            $("#preWorkstartDate2").html($($('.startDate')[index]).val());
        }

        if ($($('.endDate')[index]).val().length > 0 && index == 0) {
            $("#preWorkendDate0").html($($('.endDate')[index]).val());
        }
        if ($($('.endDate')[index]).val().length > 0 && index == 1) {
            $("#preWorkendDate1").html($($('.endDate')[index]).val());
        }
        if ($($('.endDate')[index]).val().length > 0 && index == 2) {
            $("#preWorkendDate2").html($($('.endDate')[index]).val());
        }

        if ($($('.employeeEditor')[index]).val().length > 0 && index == 0) {
            $("#preWorkDesc0").html($($('.employeeEditor')[index]).val());
        }
        if ($($('.employeeEditor')[index]).val().length > 0 && index == 1) {
            $("#preWorkDesc1").html($($('.employeeEditor')[index]).val());
        }
        if ($($('.employeeEditor')[index]).val().length > 0 && index == 2) {
            $("#preWorkDesc2").html($($('.employeeEditor')[index]).val());
        }
    });
    preJobTitleChange()
    if (preJobTitle.val().length <= 0) {
        $('.preWorkSub0').hide();
        $('.preWorkSub1').hide();
        $('.preWorkSub2').hide();
    }

    if (preJobTitle.val().length <= 0) {
        $('.experienceDiv').hide();
    }
    // $('#preWorkExperience').append(addPreExp);
    for (const i of preJobTitle) {
        i.addEventListener('change', preJobTitleChange);
    }
    for (const i of workStartdate) {
        i.addEventListener('change', preJobstartdateChange);
    }
    for (const i of workEnddate) {
        i.addEventListener('change', preJobenddateChange);
    }
    for (const i of employerName) {
        i.addEventListener('change', preEmployerNameChange);
    }
    for (const i of employerCity) {
        i.addEventListener('change', preEmployerCityChange);
    }

    $(".employeeEditor").each(function (index, value) {
        $(this).on('input propertychange', function () {
            if (index == "0") {
                $("#preWorkDesc0").html($(this).val());
            }
            if (index == "1") {
                $("#preWorkDesc1").html($(this).val());
            }
            if (index == "2") {
                $("#preWorkDesc2").html($(this).val());
            }
        });
    });

    //date
    $('.startDate').datepicker(
        {
            dateFormat: "MM yy",
            changeMonth: true,
            changeYear: true,
            yearRange: "1980:2021",
            showButtonPanel: true,
            onClose: function (dateText, inst) {
                function isDonePressed() {
                    return ($('#ui-datepicker-div').html().indexOf('ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all ui-state-hover') > -1);
                }

                if (isDonePressed()) {
                    var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                    var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                    $(this).datepicker('setDate', new Date(year, month, 1)).trigger('change');
                    preJobstartdateChange(this);
                    $('.date-picker').focusout()//Added to remove focus from datepicker input box on selecting date
                }
            },
            beforeShow: function (input, inst) {

                inst.dpDiv.addClass('month_year_datepicker')

                if ((datestr = $(this).val()).length > 0) {
                    year = datestr.substring(datestr.length - 4, datestr.length);
                    month = datestr.substring(0, 2);
                    $(this).datepicker('option', 'defaultDate', new Date(year, month - 1, 1));
                    $(this).datepicker('setDate', new Date(year, month - 1, 1));
                    $(".ui-datepicker-calendar").hide();
                }
            }
        });
    $('.endDate').datepicker({
        dateFormat: "MM yy",
        changeMonth: true,
        changeYear: true,
        yearRange: "1980:2021",
        showButtonPanel: true,
        onClose: function (dateText, inst) {
            function isDonePressed() {
                return ($('#ui-datepicker-div').html().indexOf('ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all ui-state-hover') > -1);
            }
            if (isDonePressed()) {
                var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                $(this).datepicker('setDate', new Date(year, month, 1)).trigger('change');
                preJobenddateChange(this);
                $('.date-picker').focusout()//Added to remove focus from datepicker input box on selecting date
            }
        },
        beforeShow: function (input, inst) {
            inst.dpDiv.addClass('month_year_datepicker')
            if ((datestr = $(this).val()).length > 0) {
                year = datestr.substring(datestr.length - 4, datestr.length);
                month = datestr.substring(0, 2);
                $(this).datepicker('option', 'defaultDate', new Date(year, month - 1, 1));
                $(this).datepicker('setDate', new Date(year, month - 1, 1));
                $(".ui-datepicker-calendar").hide();
            }
        }
    });

    function preJobTitleChange() {

        var cordionSelector = $("#employeeHistoryAccordion").children().find(".show").attr('id');
        if (cordionSelector == "jobExpcollapse0") {
            $("#preWorkTitle0").html($(this).val());
            $("#AccordionWorkTitleLabel0").html($(this).val());
        }
        if (cordionSelector == "jobExpcollapse1") {
            $("#preWorkTitle1").html($(this).val());
            $("#AccordionWorkTitleLabel1").html($(this).val());
        }
        if (cordionSelector == "jobExpcollapse2") {
            $("#preWorkTitle2").html($(this).val());
            $("#AccordionWorkTitleLabel2").html($(this).val());
        }

        if ($('#AccordionWorkTitleLabel0').text().length > 0 && $('#AccordionWorkTitleLabel0').text() != "(Not Specified)") {
            $('.preWorkSub0').show();
            $('.experienceDiv').show();
        } else {
            $('.preWorkSub0').hide();
        }
        if ($('#AccordionWorkTitleLabel1').text().length > 0 && $('#AccordionWorkTitleLabel1').text() != "(Not Specified)") {
            $('.preWorkSub1').show();
            $('.experienceDiv').show();
        } else {
            $('.preWorkSub1').hide();
        } if ($('#AccordionWorkTitleLabel2').text().length > 0 && $('#AccordionWorkTitleLabel2').text() != "(Not Specified)") {
            $('.preWorkSub2').show();
            $('.experienceDiv').show();
        } else {
            $('.preWorkSub2').hide();
        }
        if ($('.preWorkSub2').is(":hidden") && $('.preWorkSub1').is(":hidden") && $('.preWorkSub0').is(":hidden")) {
            $('.experienceDiv').hide();

        }
    }

    function preEmployerNameChange() {
        var cordionSelector = $("#employeeHistoryAccordion").children().find(".show").attr('id');
        if (cordionSelector == "jobExpcollapse1") {
            $("#preEmployer1").html($(this).val());
        }
        if (cordionSelector == "jobExpcollapse2") {
            $("#preEmployer2").html($(this).val());
        }
        if (cordionSelector == "jobExpcollapse0") {
            $("#preEmployer0").html($(this).val());
        }
    }

    function preEmployerCityChange() {
        var cordionSelector = $("#employeeHistoryAccordion").children().find(".show").attr('id');
        if (cordionSelector == "jobExpcollapse1") {
            $("#preWorkCity1").html($(this).val());
        }
        if (cordionSelector == "jobExpcollapse2") {
            $("#preWorkCity2").html($(this).val());
        }
        if (cordionSelector == "jobExpcollapse0") {
            $("#preWorkCity0").html($(this).val());
        }
    }

    function preJobstartdateChange(select = null) {
        var cordionSelector = $("#employeeHistoryAccordion").children().find(".show").attr('id');
        if (select == null) {
            if (cordionSelector == "jobExpcollapse1") {
                $("#preWorkstartDate1").html($(this).val());
            }
            if (cordionSelector == "jobExpcollapse2") {
                $("#preWorkstartDate2").html($(this).val());
            }
            if (cordionSelector == "jobExpcollapse0") {
                $("#preWorkstartDate0").html($(this).val());
            }
        } else {
            if (cordionSelector == "jobExpcollapse1") {
                $("#preWorkstartDate1").html($(select).val());
            }
            if (cordionSelector == "jobExpcollapse2") {
                $("#preWorkstartDate2").html($(select).val());
            }
            if (cordionSelector == "jobExpcollapse0") {
                $("#preWorkstartDate0").html($(select).val());
            }
        }
    }

    function preJobenddateChange(select = null) {
        var cordionSelector = $("#employeeHistoryAccordion").children().find(".show").attr('id');
        if (select == null) {
            if (cordionSelector == "jobExpcollapse1") {
                $("#preWorkendDate1").html($(this).val());
            }
            if (cordionSelector == "jobExpcollapse2") {
                $("#preWorkendDate2").html($(this).val());
            }
            if (cordionSelector == "jobExpcollapse0") {
                $("#preWorkendDate0").html($(this).val());
            }
        } else {

            if (cordionSelector == "jobExpcollapse1") {
                $("#preWorkendDate1").html($(select).val());
            }
            if (cordionSelector == "jobExpcollapse2") {
                $("#preWorkendDate2").html($(select).val());
            }
            if (cordionSelector == "jobExpcollapse0") {
                $("#preWorkendDate0").html($(select).val());
            }
        }
    }



    var preEducTitle = $('.school');
    var educStartdate = $('.educStartDate');
    var educEnddate = $('.educEndDate');
    var educCity = $('.educCity');
    var educDegree = $('.degree');
    $(".school").each(function (index) {
        if ($($('.school')[index]).val().length > 0 && index == 0) {
            $("#AccordionEducTitleLabel0").html($(this).val());
            $("#preEducTitle0").html($($('.school')[index]).val());
            $('.preEducSub0').show();
            $('.educDiv').show();
        } else {
            $('.preEducSub0').hide();
        }
        if ($($('.school')[index]).val().length > 0 && index == 1) {
            $("#AccordionEducTitleLabel1").html($(this).val());
            $("#preEducTitle1").html($($('.school')[index]).val());
            $('.preEducSub1').show();
            $('.educDiv').show();
        } else {
            $('.preEducSub1').hide();
        }
        if ($($('.school')[index]).val().length > 0 && index == 2) {
            $("#AccordionEducTitleLabel2").html($(this).val());
            $("#preEducTitle2").html($($('.school')[index]).val());
            $('.preEducSub2').show();
            $('.educDiv').show();
        } else {
            $('.preEducSub2').hide();
        }
        if ($('.preEducSub2').is(":hidden") && $('.preEducSub1').is(":hidden") && $('.preEducSub0').is(":hidden")) {
            $('.educDiv').hide();
        }

        if ($($('.degree')[index]).val().length > 0 && index == 0) {
            $("#preEducDegree0").html($($('.degree')[index]).val());
        }
        if ($($('.degree')[index]).val().length > 0 && index == 1) {
            $("#preEducDegree1").html($($('.degree')[index]).val());
        }
        if ($($('.degree')[index]).val().length > 0 && index == 2) {
            $("#preEducDegree2").html($($('.degree')[index]).val());
        }

        if ($($('.educCity')[index]).val().length > 0 && index == 0) {
            $("#preEducCity0").html($($('.educCity')[index]).val());
        }
        if ($($('.educCity')[index]).val().length > 0 && index == 1) {
            $("#preEducCity1").html($($('.educCity')[index]).val());
        }
        if ($($('.educCity')[index]).val().length > 0 && index == 2) {
            $("#preEducCity2").html($($('.educCity')[index]).val());
        }

        if ($($('.educStartDate')[index]).val().length > 0 && index == 0) {
            $("#preWorkstartDate0").html($($('.educStartDate')[index]).val());
        }
        if ($($('.educStartDate')[index]).val().length > 0 && index == 1) {
            $("#preWorkstartDate1").html($($('.educStartDate')[index]).val());
        }
        if ($($('.educStartDate')[index]).val().length > 0 && index == 2) {
            $("#preWorkstartDate2").html($($('.educStartDate')[index]).val());
        }

        if ($($('.educEndDate')[index]).val().length > 0 && index == 0) {
            $("#preWorkendDate0").html($($('.educEndDate')[index]).val());
        }
        if ($($('.educEndDate')[index]).val().length > 0 && index == 1) {
            $("#preWorkendDate1").html($($('.educEndDate')[index]).val());
        }
        if ($($('.educEndDate')[index]).val().length > 0 && index == 2) {
            $("#preWorkendDate2").html($($('.educEndDate')[index]).val());
        }
    });

    preEducTitleChange()
    if (preEducTitle.val().length <= 0) {
        $('.preEducSub0').hide();
        $('.preEducSub1').hide();
        $('.preEducSub2').hide();
    }

    if (preEducTitle.val().length <= 0) {
        $('.educDiv').hide();
    }

    for (const i of preEducTitle) {
        i.addEventListener('change', preEducTitleChange);
    }
    for (const i of educStartdate) {
        i.addEventListener('change', preEducstartdateChange);
    }
    for (const i of educEnddate) {
        i.addEventListener('change', preEducenddateChange);
    }
    for (const i of educCity) {
        i.addEventListener('change', preEducCityChange);
    }
    for (const i of educDegree) {
        i.addEventListener('change', preEducDegreeChange);
    }

    //date
    $('.educStartDate').datepicker(
        {
            dateFormat: "MM yy",
            changeMonth: true,
            changeYear: true,
            yearRange: "1980:2021",
            showButtonPanel: true,
            onClose: function (dateText, inst) {


                function isDonePressed() {
                    return ($('#ui-datepicker-div').html().indexOf('ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all ui-state-hover') > -1);
                }

                if (isDonePressed()) {
                    var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                    var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                    $(this).datepicker('setDate', new Date(year, month, 1)).trigger('change');
                    preEducstartdateChange(this);
                    $('.date-picker').focusout()//Added to remove focus from datepicker input box on selecting date
                }
            },
            beforeShow: function (input, inst) {

                inst.dpDiv.addClass('month_year_datepicker')

                if ((datestr = $(this).val()).length > 0) {
                    year = datestr.substring(datestr.length - 4, datestr.length);
                    month = datestr.substring(0, 2);
                    $(this).datepicker('option', 'defaultDate', new Date(year, month - 1, 1));
                    $(this).datepicker('setDate', new Date(year, month - 1, 1));
                    $(".ui-datepicker-calendar").hide();
                }
            }
        });
    $('.educEndDate').datepicker(
        {
            dateFormat: "MM yy",
            changeMonth: true,
            changeYear: true,
            yearRange: "1980:2021",
            showButtonPanel: true,
            onClose: function (dateText, inst) {


                function isDonePressed() {
                    return ($('#ui-datepicker-div').html().indexOf('ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all ui-state-hover') > -1);
                }

                if (isDonePressed()) {
                    var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                    var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                    $(this).datepicker('setDate', new Date(year, month, 1)).trigger('change');
                    preEducenddateChange(this);
                    $('.date-picker').focusout()//Added to remove focus from datepicker input box on selecting date
                }
            },
            beforeShow: function (input, inst) {

                inst.dpDiv.addClass('month_year_datepicker')

                if ((datestr = $(this).val()).length > 0) {
                    year = datestr.substring(datestr.length - 4, datestr.length);
                    month = datestr.substring(0, 2);
                    $(this).datepicker('option', 'defaultDate', new Date(year, month - 1, 1));
                    $(this).datepicker('setDate', new Date(year, month - 1, 1));
                    $(".ui-datepicker-calendar").hide();
                }
            }
        });


    function preEducTitleChange() {
        var cordionSelector = $("#education").children().find(".show").attr('id');
        if (cordionSelector == "educationcollapse0") {
            $("#preEducTitle0").html($(this).val());
            $("#AccordionEducTitleLabel0").html($(this).val());
        }
        if (cordionSelector == "educationcollapse1") {
            $("#preEducTitle1").html($(this).val());
            $("#AccordionEducTitleLabel1").html($(this).val());
        }
        if (cordionSelector == "educationcollapse2") {
            $("#preEducTitle2").html($(this).val());
            $("#AccordionEducTitleLabel2").html($(this).val());
        }

        if ($('#AccordionEducTitleLabel0').text().length > 0 && $('#AccordionEducTitleLabel0').text() != "(Not Specified)") {
            $('.preEducSub0').show();
            $('.educDiv').show();
        } else {
            $('.preEducSub0').hide();
        }
        if ($('#AccordionEducTitleLabel1').text().length > 0 && $('#AccordionEducTitleLabel1').text() != "(Not Specified)") {
            $('.preEducSub1').show();
            $('.educDiv').show();
        } else {
            $('.preEducSub1').hide();
        } if ($('#AccordionEducTitleLabel2').text().length > 0 && $('#AccordionEducTitleLabel2').text() != "(Not Specified)") {
            $('.preEducSub2').show();
            $('.educDiv').show();
        } else {
            $('.preEducSub2').hide();
        }
        if ($('.preEducSub2').is(":hidden") && $('.preEducSub1').is(":hidden") && $('.preEducSub0').is(":hidden")) {
            $('.educDiv').hide();

        }
    }

    function preEducDegreeChange() {
        var cordionSelector = $("#education").children().find(".show").attr('id');
        if (cordionSelector == "educationcollapse1") {
            $("#preEducDegree1").html($(this).val());
        }
        if (cordionSelector == "educationcollapse2") {
            $("#preEducDegree2").html($(this).val());
        }
        if (cordionSelector == "educationcollapse0") {
            $("#preEducDegree0").html($(this).val());
        }
    }

    function preEducCityChange() {
        var cordionSelector = $("#education").children().find(".show").attr('id');
        if (cordionSelector == "educationcollapse1") {
            $("#preEducCity1").html($(this).val());
        }
        if (cordionSelector == "educationcollapse2") {
            $("#preEducCity2").html($(this).val());
        }
        if (cordionSelector == "educationcollapse0") {
            $("#preEducCity0").html($(this).val());
        }
    }

    function preEducstartdateChange(select = null) {
        var cordionSelector = $("#education").children().find(".show").attr('id');
        if (select == null) {
            if (cordionSelector == "educationcollapse1") {
                $("#preEducstartDate1").html($(this).val());
            }
            if (cordionSelector == "educationcollapse2") {
                $("#preEducstartDate2").html($(this).val());
            }
            if (cordionSelector == "educationcollapse0") {
                $("#preEducstartDate0").html($(this).val());
            }
        } else {

            if (cordionSelector == "educationcollapse1") {
                $("#preEducstartDate1").html($(select).val());
            }
            if (cordionSelector == "educationcollapse2") {
                $("#preEducstartDate2").html($(select).val());
            }
            if (cordionSelector == "educationcollapse0") {
                $("#preEducstartDate0").html($(select).val());
            }
        }
    }

    function preEducenddateChange(select = null) {
        var cordionSelector = $("#education").children().find(".show").attr('id');
        if (select == null) {
            if (cordionSelector == "educationcollapse1") {
                $("#preEducendDate1").html($(this).val());
            }
            if (cordionSelector == "educationcollapse2") {
                $("#preEducendDate2").html($(this).val());
            }
            if (cordionSelector == "educationcollapse0") {
                $("#preEducendDate0").html($(this).val());
            }
        } else {
            if (cordionSelector == "educationcollapse1") {
                $("#preEducendDate1").html($(select).val());
            }
            if (cordionSelector == "educationcollapse2") {
                $("#preEducendDate2").html($(select).val());
            }
            if (cordionSelector == "educationcollapse0") {
                $("#preEducendDate0").html($(select).val());
            }

        }
    }


    //socialLink
    accorSocTemp = true;
    accorSocTemp1 = true;
    if ($(".accordionSocial0").length == 0) {
        $(".socialDiv").hide();
    }
    var socialCounter = 0;
    $("#addSocial").click(function () {
        $(".socialDiv").show();
        if (socialCounter < 3) {
            // <span class="subContent">
            //   www.github.com/Ddollz <br>
            //   www.facebook.com/D.dollzs
            // </span>.

            if (accorSocTemp) {
                updateProgressBar("11.864", $(".progress__percent").text(), 1);
                accorSocTemp = false;
                accorSocTemp1 = false;

            }
            var addPreLink = '<p class="subContent preSocialSub' + socialCounter + '">\
                            <span id="preLink'+ socialCounter + '"></span>\
                          </p>';

            var preSocialLink = $('.socialLink');
            $('#preSocialLink').append(addPreLink);

            for (const i of preSocialLink) {
                i.addEventListener('change', preSocialLinkChange);
            }
            socialCounter++;
        }
    });

    $("#removeSocial").click(function () {

        if ($(".accordionSocial0").length == 0) {
            $(".socialDiv").hide();

            if (!accorSocTemp) {
                updateProgressBar("11.864", $(".progress__percent").text(), 0);
                accorSocTemp = true;
                accorSocTemp1 = true;

            }
        }
        if (socialCounter != 0) {
            temp = socialCounter - 1;
            $(".preSocialSub" + temp).remove();
            socialCounter--;
        }
    });
    function preSocialLinkChange() {
        var cordionSelector = $("#social").children().find(".show").attr('id');
        if (cordionSelector == "socialcollapse0") {
            $("#preLink0").html($(this).val());
            $("#AccordionSocialTitleLabel0").html($(this).val());
        }
        if (cordionSelector == "socialcollapse1") {
            $("#preLink1").html($(this).val());
            $("#AccordionSocialTitleLabel1").html($(this).val());
        }
        if (cordionSelector == "socialcollapse2") {
            $("#preLink2").html($(this).val());
            $("#AccordionSocialTitleLabel2").html($(this).val());
        }
    }

    //refname
    //refcompany
    //refPhone
    //refEmail
    //AccordionReferenceTitleLabel
    //refDiv

    //      <p class="subtitle">
    //     Renato, Vendor<br>
    //     <span class="subContent">
    //       Email.Com 09286120906
    //     </span>
    //   </p> 

    accorRefTemp = true;
    accorRefTemp1 = true;
    if ($(".accordionReference0").length == 0) {
        $(".refDiv").hide();
    }
    var referenceCounter = 0;
    $("#addReference").click(function () {
        $(".refDiv").show();
        if (referenceCounter < 3) {

            if (accorRefTemp) {
                updateProgressBar("11.864", $(".progress__percent").text(), 1);
                accorRefTemp = false;
                accorRefTemp1 = false;

            }
            var addPreRef = '<p class="subtitle preRefSub' + referenceCounter + '">\
          <span id="preRefName'+ referenceCounter + '"></span>,\
          <span id="preRefCompany'+ referenceCounter + '"></span><br>\
          <span class="subContent">\
          <span id="preRefEmail'+ referenceCounter + '"></span> - \
          <span id="preRefPhone'+ referenceCounter + '"></span> <br>\
          </span>\
        </p>';
            var preRefName = $('.refname');
            var preRefCompany = $('.refcompany');
            var preRefEmail = $('.refPhone');
            var preRefPhone = $('.refEmail');
            $('#preReference').append(addPreRef);
            for (const i of preRefName) {
                i.addEventListener('change', preRefNameChange);
            }
            for (const i of preRefCompany) {
                i.addEventListener('change', preRefCompChange);
            }
            for (const i of preRefEmail) {
                i.addEventListener('change', preRefEmailChange);
            }
            for (const i of preRefPhone) {
                i.addEventListener('change', preRefPhoneChange);
            }
            referenceCounter++;
        }
    });

    $("#removeReference").click(function () {

        if ($(".accordionReference0").length == 0) {
            $(".refDiv").hide();
            if (!accorRefTemp) {
                updateProgressBar("11.864", $(".progress__percent").text(), 0);
                accorRefTemp = true;
                accorRefTemp1 = true;

            }
        }
        if (referenceCounter != 0) {
            temp = referenceCounter - 1;
            $(".preRefSub" + temp).remove();
            referenceCounter--;
        }
    });

    function preRefNameChange() {
        var cordionSelector = $("#reference").children().find(".show").attr('id');
        if (cordionSelector == "referencecollapse0") {
            $("#preRefName0").html($(this).val());
            $("#AccordionReferenceTitleLabel0").html($(this).val());
        }
        if (cordionSelector == "referencecollapse1") {
            $("#preRefName1").html($(this).val());
            $("#AccordionReferenceTitleLabel1").html($(this).val());
        }
        if (cordionSelector == "referencecollapse2") {
            $("#preRefName2").html($(this).val());
            $("#AccordionReferenceTitleLabel2").html($(this).val());
        }
    }

    function preRefCompChange() {
        var cordionSelector = $("#reference").children().find(".show").attr('id');
        if (cordionSelector == "referencecollapse1") {
            $("#preRefCompany1").html($(this).val());
        }
        if (cordionSelector == "referencecollapse2") {
            $("#preRefCompany2").html($(this).val());
        }
        if (cordionSelector == "referencecollapse0") {
            $("#preRefCompany0").html($(this).val());
        }
    }

    function preRefPhoneChange() {
        var cordionSelector = $("#reference").children().find(".show").attr('id');
        if (cordionSelector == "referencecollapse1") {
            $("#preRefPhone1").html($(this).val());
        }
        if (cordionSelector == "referencecollapse2") {
            $("#preRefPhone2").html($(this).val());
        }
        if (cordionSelector == "referencecollapse0") {
            $("#preRefPhone0").html($(this).val());
        }
    }

    function preRefEmailChange() {
        var cordionSelector = $("#reference").children().find(".show").attr('id');
        if (cordionSelector == "referencecollapse1") {
            $("#preRefEmail1").html($(this).val());
        }
        if (cordionSelector == "referencecollapse2") {
            $("#preRefEmail2").html($(this).val());
        }
        if (cordionSelector == "referencecollapse0") {
            $("#preRefEmail0").html($(this).val());
        }
    }


    //AccordionSkillTitleLabel
    //accordionSkill
    //skilltitle
    //skillcollapse

    accorSkillTemp = true;
    accorSkillTemp1 = true;

    if ($(".accordionSkill0").length == 0) {
        $(".skillDiv").hide();
    }
    var skillCounter = 0;
    $("#addSkill").click(function () {
        $(".skillDiv").show();
        if (skillCounter < 10) {

            if (accorSkillTemp) {
                updateProgressBar("11.884", $(".progress__percent").text(), 1);
                accorSkillTemp = false;
                accorSkillTemp1 = false;
            }
            var addPreSkill = '<span id="preSkillName' + skillCounter + '"></span> <br>';
            var preSkill = $('.skilltitle');
            $('#skillContent').append(addPreSkill);
            for (const i of preSkill) {
                i.addEventListener('change', preSkillNameChange);
            }
            skillCounter++;
        }
    });

    $("#removeSkill").click(function () {

        if ($(".accordionSkill0").length == 0) {
            $(".skillDiv").hide();

            if (!accorSkillTemp) {
                updateProgressBar("11.884", $(".progress__percent").text(), 0);
                accorSkillTemp = true;
                accorSkillTemp1 = true;
            }
        }
        if (skillCounter != 0) {
            temp = skillCounter - 1;
            $(".preRefSub" + temp).remove();
            skillCounter--;
        }
    });
    function preSkillNameChange() {

        var cordionSelector = $("#skill").children().find(".show").attr('id');
        if (cordionSelector == "skillcollapse0") {
            $("#preSkillName0").html($(this).val());
            $("#AccordionSkillTitleLabel0").html($(this).val());
        }
        if (cordionSelector == "skillcollapse1") {
            $("#preSkillName1").html($(this).val());
            $("#AccordionSkillTitleLabel1").html($(this).val());
        }
        if (cordionSelector == "skillcollapse2") {
            $("#preSkillName2").html($(this).val());
            $("#AccordionSkillTitleLabel2").html($(this).val());
        }
        if (cordionSelector == "skillcollapse3") {
            $("#preSkillName3").html($(this).val());
            $("#AccordionSkillTitleLabel3").html($(this).val());
        }
        if (cordionSelector == "skillcollapse4") {
            $("#preSkillName4").html($(this).val());
            $("#AccordionSkillTitleLabel4").html($(this).val());
        }
        if (cordionSelector == "skillcollapse5") {
            $("#preSkillName5").html($(this).val());
            $("#AccordionSkillTitleLabel5").html($(this).val());
        }
        if (cordionSelector == "skillcollapse6") {
            $("#preSkillName6").html($(this).val());
            $("#AccordionSkillTitleLabel6").html($(this).val());
        }
        if (cordionSelector == "skillcollapse7") {
            $("#preSkillName7").html($(this).val());
            $("#AccordionSkillTitleLabel7").html($(this).val());
        }
        if (cordionSelector == "skillcollapse8") {
            $("#preSkillName8").html($(this).val());
            $("#AccordionSkillTitleLabel8").html($(this).val());
        }
        if (cordionSelector == "skillcollapse9") {
            $("#preSkillName9").html($(this).val());
            $("#AccordionSkillTitleLabel9").html($(this).val());
        }
    }

});
