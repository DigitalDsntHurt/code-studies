d3.select('body').append('div').attr('class','container')
	.append('h1')
		.text('weeks in a life')
		.style('text-align',"center");


var svg = d3.select('.container')
	.append('svg')
		.attr("width", 600)
		.attr("height", 900)

var data = [1,2,3,4,5,6,7,8,9]

var chart = svg.selectAll('rect')
	.data(data)
	.enter()
	.append('rect')
	.attr('y', 400)
	.attr('height', 20)
	.attr('x', function(d){
		return d * (600 / data.length)
	})
	.attr('width', 20)