// utility functions used in demos (generating random numbers, etc.)
// ideally we could apply these funcitons as properties of the ZINGCHART.demos object
// the demos currently have hardcoded references to the zcdocs object, so using this for now
var zcdocs = {};
zcdocs.utils = {
    rvalue : function(min, max, integer) {
        if (typeof(integer) == 'undefined') integer = true;
        var v = min + (max-min)*Math.random();
        return integer?parseInt(v, 10):v;
    },
    rvalues : function(n, min, max, integer) {
        if (typeof(i) == 'undefined') integer = true;
        var v = [];
        for (var i=0;i<n;i++) {
            v.push(zcdocs.utils.rvalue(min, max, integer));
        }
        return v;
    },
    rcolor : function() {
        return '#' + (function(h){return new Array(7-h.length).join("0")+h})((Math.random()*(0xFFFFFF+1)<<0).toString(16));
    }
};
zcdocs.demos = {};

// prints out the data from an event in the overlay 'console' to provide users feedback for when
// an event has completed
zcdocs.demos.dump = function() {
    // create object to prevent manipulate original
    var argObj = {};

    // convert any objects in the event response object to the string '{object}'
    // we don't need to print out multiple levels of the object; converting to string prevents
    // against issues like circular (self referential) objects from causing errors on stringification
    // (in particular, objects containing references to DOM nodes cannot be stringified)
    document.getElementById('output').className = 'active';
    for (var key in arguments[1]) {
        if (typeof arguments[1][key] === 'object') {
            argObj[key] = '{object}';
        }
    }

    var content = typeof arguments[1] !== 'undefined' ? arguments[1] : JSON.stringify(argObj, null, '  ');
    var contents = arguments[0] + ': ' + content + '<br>';

    var output = document.getElementById('output');
    output.innerHTML = output.innerHTML + contents;
}