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



	
};

app.addViewModel({
    name: "Hospital",
    bindingMemberName: "hospital",
    factory: HospitalViewModel
});
