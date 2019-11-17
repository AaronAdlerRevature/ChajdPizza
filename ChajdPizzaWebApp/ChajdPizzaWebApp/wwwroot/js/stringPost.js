
    $('form').submit(function () {
                var queryString = $(this).serializeArray()
                    .reduce(function (transformed, current) {
                        var existing = transformed.find(function (param) {
                            return param.name === current.name;
});
if (existing)
    existing.value += (',' + current.value);
else
    transformed.push(current);
return transformed;
}, [])
                    .map(function (param) {
                        return param.name + '=' + param.value;
})
.join('&');
var action = $(this).prop('action');
var delimiter = (~action.indexOf('?')) ? '&' : '?';
$(this).prop('action', action + delimiter + queryString);

// Only for display result. Remove on real page.
var url = $(this).prop('action');
console.log(url);
return false;
});
