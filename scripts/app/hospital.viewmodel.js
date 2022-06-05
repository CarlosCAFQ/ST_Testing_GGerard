ko.bindingHandlers.confirmClick = {
    init: function(element, valueAccessor, allBindings, viewModel) {
        var value = valueAccessor();
        var message = ko.unwrap(value.message);
        var click = value.click;
        ko.applyBindingsToNode(element, { click: function () {
                if (confirm(message))
                    return click.apply(this, Array.prototype.slice.apply(arguments));
            }}, viewModel);
    }
};


function HospitalViewModel(app, dataModel) {
	//console.log("====function HospitalViewModel->START");
    var self = this;
    self.POR_ASIGNAR_CONSTANT = "POR ASIGNAR";

    var SAMPLE_TYPE_ANTIGENO = 14;                                      // Tipo de toma de muestra
    //var TEST_TYPE_ANTIGENO = 4;
    //var LAB_PROPIO_ID = "999999";
    //var LAB_PRIVADO_ID = "999998";
    var LAB_PROPIO_ID = app.Views.Home.LAB_PROPIO_ID();
    var LAB_PRIVADO_ID = app.Views.Home.LAB_PRIVADO_ID();

    var date_format_ = app.dataModel.date_format_;
    var date_format_moment = app.dataModel.date_format_moment;
    var date_format_ISO = app.dataModel.date_format_ISO;
    var date_format_DatePicker = app.dataModel.date_format_DatePicker;
    var date_hospital = new Date();
    var date_fever = new Date();
    var date_diagnostic = new Date();
    var date_hosp_adm = new Date();
    var date_hosp_disc = new Date();
    var date_ICU_adm = new Date();
    var date_ICU_disc = new Date();
    var date_sample = new Date();
    var date_ship = new Date();
    var date_close_case = new Date();
    var date_MaxDateSystem = MaxDateSystem;
	
};

app.addViewModel({
    name: "Hospital",
    bindingMemberName: "hospital",
    factory: HospitalViewModel
});
