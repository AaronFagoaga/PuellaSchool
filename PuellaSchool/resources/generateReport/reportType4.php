<script>
    Highcharts.chart('container', {
        title: {
            text: 'Cantidad de Reportes por Fecha',
            align: 'left'
        },
        subtitle: {
            text: 'Desarrollado por corporation DEV',
            align: 'left'
        },
        yAxis: {
            title: {
                text: 'Cantidad de Reportes'
            },
            allowDecimals: false
        },
        xAxis: {
            type: 'datetime',
            title: {
                text: 'Fecha'
            },
            dateTimeLabelFormats: {
                day: '%e. %b',
                month: '%b %Y',
                year: '%Y'
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle'
        },
        plotOptions: {
            series: {
                label: {
                    connectorAllowed: false
                },
                pointStart: Date.UTC(2024, 0, 1)
            }
        },
        series: [{
            name: 'Cantidad de Reportes',
            data: [
                <?php
                date_default_timezone_set('America/Belize');
                foreach ($reports as $fila) {
                    $timestamp = strtotime($fila["reportDate"]) * 1000;
                    echo "[$timestamp, " . $fila["ReportsQuantity"] . "],";
                }
                ?>
            ]
        }],
        responsive: {
            rules: [{
                condition: {
                    maxWidth: 500
                },
                chartOptions: {
                    legend: {
                        layout: 'horizontal',
                        align: 'center',
                        verticalAlign: 'bottom'
                    }
                }
            }]
        }
    });
</script>