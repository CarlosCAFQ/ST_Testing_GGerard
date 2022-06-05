//**** Variables globales
var PREGNANTAGEMIN = 10;                        // Edad minima embarazo
var PREGNANTAGEMAX = 56;                        // Edad maxima embarazo
var UNDER_AGE = 18;
var CHILD_AGE = 10;
//var SAMPLE_TYPE_ANTIGENO = 14;          

function HomeViewModel(app, dataModel) {



}

app.addViewModel({
    name: "Home",
    bindingMemberName: "home",
    factory: HomeViewModel
});

