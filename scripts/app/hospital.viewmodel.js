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


	
};

app.addViewModel({
    name: "Hospital",
    bindingMemberName: "hospital",
    factory: HospitalViewModel
});
