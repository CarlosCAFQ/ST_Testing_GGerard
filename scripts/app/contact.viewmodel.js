function InstitutionsFlow() {
    var self = this;
    self.LabID = "";
    self.LabName = ko.observable("");
    self.OPbyL = "";
};

function ContactViewModel(app, dataModel) {



};

app.addViewModel({
    name: "Contact",
    bindingMemberName: "contact",
    factory: ContactViewModel
});
