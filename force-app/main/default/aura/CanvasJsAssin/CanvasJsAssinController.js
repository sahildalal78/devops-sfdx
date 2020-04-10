({
     generateChart: function (component, event, helper) {  
            
		var chart = new CanvasJS.Chart("chartContainer1", {
	animationEnabled: true,
	title:{
		text: "Debt Forecast",
		fontFamily: "arial black",
		fontColor: "#695A48"
	},
            dataPointWidth: 35,
	axisX: {
		interval: 1,
		intervalType: "year",
        tickColor: "#FF0000"
	},
           
	axisY:{
		valueFormatString:"#0K",
	gridColor: "#FF0000",
		tickColor: "#FF0000"
	},
	toolTip: {
        contentFormatter: function ( e ) {
          
            console.log('dahgha'+e.entries.data[0].dataPoints[0]);
                    
        }
        
			},
               
            data: [{
             type: "stackedColumn",
		showInLegend: true,
		color: "#200d3b",
		name: "Wheat",
                
		dataPoints: [
			{ y: 6.75, x: new Date(2010,0) },
			{ y: 8.57, x: new Date(2011,0) },
			{ y: 10.64, x: new Date(2012,0) },
			{ y: 15.97, x: new Date(2013,0) },
			{ y: 5.42, x: new Date(2014,0) },
			{ y: 17.26, x: new Date(2015,0) },
			{ y: 20.26, x: new Date(2016,0) },
             { y: 19.45, x: new Date(2017,0) },
                { y: 17.65, x: new Date(2018,0) },
                { y: 21.45, x: new Date(2019,0) }
		]
		},
		{        
			type: "stackedColumn",
			showInLegend: true,
			name: "Rice",
			color: "#88bcc7",
			dataPoints: [
				{ y: 6.82, x: new Date(2010,0) },
				{ y: 9.02, x: new Date(2011,0) },
				{ y: 11.80, x: new Date(2012,0) },
				{ y: 14.11, x: new Date(2013,0) },
				{ y: 15.96, x: new Date(2014,0) },
				{ y: 17.73, x: new Date(2015,0) },
				{ y: 21.5, x: new Date(2016,0) },
                 { y: 9.45, x: new Date(2017,0) },
                { y: 7.65, x: new Date(2018,0) },
                { y: 21.45, x: new Date(2019,0) },
			]
		},
		{        
			type: "stackedColumn",
			showInLegend: true,
			name: "Pulses",
			color: "#308553",
			dataPoints: [
				{ y: 7.28, x: new Date(2010,0) },
				{ y: 9.72, x: new Date(2011,0) },
				{ y: 13.30, x: new Date(2012,0) },
				{ y: 18.9, x: new Date(2013,0) },
				{ y: 8.10, x: new Date(2014,0) },
				{ y: 18.68, x: new Date(2015,0) },
				{ y: 2.45, x: new Date(2016,0) },
                 { y: 9.45, x: new Date(2017,0) },
                { y: 7.65, x: new Date(2018,0) },
                { y: 6.45, x: new Date(2019,0) }
			]
		},
		{        
			type: "stackedColumn",
			showInLegend: true,
			name: "Apple",
			color: "#85d689",
			dataPoints: [
				{ y: 8.44, x: new Date(2010,0) },
				{ y: 10.58, x: new Date(2011,0) },
				{ y: 14.41, x: new Date(2012,0) },
				{ y: 6.86, x: new Date(2013,0) },
				{ y: 17.64, x: new Date(2014,0) },
				{ y: 26.32, x: new Date(2015,0) },
				{ y: 6.06, x: new Date(2016,0) },
                 { y: 9.45, x: new Date(2017,0) },
                { y: 17.65, x: new Date(2018,0) },
                { y: 8.45, x: new Date(2019,0) }
			]
	},
          {        
			type: "stackedColumn",
			showInLegend: true,
			name: "Mango",
			color: "#084d0b",
			dataPoints: [
				{ y: 7.28, x: new Date(2010,0) },
				{ y: 9.72, x: new Date(2011,0) },
				{ y: 13.30, x: new Date(2012,0) },
				{ y: 14.9, x: new Date(2013,0) },
				{ y: 18.10, x: new Date(2014,0) },
				{ y: 18.68, x: new Date(2015,0) },
				{ y: 22.45, x: new Date(2016,0) },
                { y: 19.45, x: new Date(2017,0) },
                { y: 17.65, x: new Date(2018,0) },
                { y: 21.45, x: new Date(2019,0) }
                ]
                    }]
            });
         
         
         
         
                   chart.render();
                   
                   }
    
})