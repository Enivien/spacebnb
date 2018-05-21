
$('.datepicker').datepicker({
    format: "dd/mm/yyyy",
    maxViewMode: 3,
    clearBtn: true,
    autoclose: true,
    todayHighlight: true,
    beforeShowDay: function(date){
                  if (date.getMonth() == (new Date()).getMonth())
                    switch (date.getDate()){
                      case 4:
                        return {
                          tooltip: 'Example tooltip',
                          classes: 'active'
                        };
                      case 8:
                        return false;
                      case 12:
                        return "green";
                  }
                }
});
