$( document ).ready(function() {
    chart();
    console.log("welrkj");
});
 
 
function chart(seq,volatile_acidity,fixed_acidity,free_sulfur_dioxide){
 
      $(function(){ 
    	  console.log(fixed_acidity);
    	var myChart = Highcharts.chart('container', {
            /* 차트종류 */
            chart: { type: 'line' },

            /* 제목 / 부제목 */
            title: { text: 'Value' },
            subtitle: { text: 'Quality'},

            /* X축 / Y 축 */
            xAxis: { categories: ['Volatile_acidity', 'Fixed_acidity', 'free_sulfur_dioxide'] },
            yAxis: { title: { text: 'Fruit eaten' } },

            /* 범례 */
            legend: { layout: 'vertical', align: 'right', verticalAlign: 'middle', borderWidth:0 },

            /* 툴팁 */
            tooltip: {valueSuffix: '개'},

            /* 표 데이터 */
            series: [
                { name: seq, data: [parseInt(volatile_acidity),parseInt(fixed_acidity),parseInt(free_sulfur_dioxide)] }
            ]
        });
      
    });
}
               
