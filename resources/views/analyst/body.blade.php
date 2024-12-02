<div class="container-fluid pt-4 px-4">
    <!-- Charts Row 1 -->
    <div class="row g-4">
        <!-- Pie Chart -->
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded p-4">
                <h6 class="mb-4">User Distribution</h6>
                <canvas id="userDistributionChart"></canvas>
            </div>
        </div>

        <!-- Bar Chart -->
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded p-4">
                <h6 class="mb-4">Campus-wise Student Distribution</h6>
                <canvas id="campusDistributionChart"></canvas>
            </div>
        </div>
    </div>

    <!-- Charts Row 2 -->
    <div class="row g-4 mt-4">
        <!-- Student Trends Line Chart -->
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded p-4">
                <h6 class="mb-4">Campus-wise Student Trends</h6>
                <canvas id="studentTrendsChart"></canvas>
            </div>
        </div>

        <!-- Freeze Students Chart -->
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded p-4">
                <h6 class="mb-4">Active vs Freeze Students by Campus</h6>
                <canvas id="freezeStudentsChart"></canvas>
            </div>
        </div>
    </div>
</div>

<!-- Add Chart.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // User Distribution Pie Chart with updated colors and hover effects
        new Chart(document.getElementById('userDistributionChart'), {
            type: 'pie',
            data: {
                labels: ['Admin', 'Principal', 'Teachers', 'Students'],
                datasets: [{
                    data: [
                        {{ $total_admin }},
                        {{ $total_principle }},
                        {{ $total_teacher }},
                        {{ $total_student }}
                    ],
                    backgroundColor: [
                        '#4A90E2', // Blue for Admin
                        '#50E3C2', // Teal for Principal
                        '#F5A623', // Orange for Teachers
                        '#7ED321' // Green for Students
                    ],
                    borderWidth: 2,
                    borderColor: '#ffffff'
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'bottom',
                        labels: {
                            padding: 20,
                            font: {
                                size: 12
                            }
                        }
                    },
                    tooltip: {
                        callbacks: {
                            label: function(context) {
                                let label = context.label || '';
                                let value = context.raw || 0;
                                let total = context.dataset.data.reduce((a, b) => a + b, 0);
                                let percentage = ((value * 100) / total).toFixed(1);
                                return `${label}: ${value} (${percentage}%)`;
                            }
                        }
                    }
                }
            }
        });

        // Campus Distribution Bar Chart with gradient
        const barCtx = document.getElementById('campusDistributionChart').getContext('2d');
        const barGradient = barCtx.createLinearGradient(0, 0, 0, 400);
        barGradient.addColorStop(0, '#36A2EB');
        barGradient.addColorStop(1, '#87CEEB');

        new Chart(barCtx, {
            type: 'bar',
            data: {
                labels: ['Korangi', 'Munawar', 'Online Academy', 'Islamabad'],
                datasets: [{
                    label: 'Number of Students',
                    data: [
                        {{ $total_korangi_students }},
                        {{ $total_munawar_students }},
                        {{ $total_online_academy_students }},
                        {{ $total_Islamabad_students }}
                    ],
                    backgroundColor: barGradient,
                    borderRadius: 5
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true,
                        grid: {
                            drawBorder: false
                        }
                    },
                    x: {
                        grid: {
                            display: false
                        }
                    }
                },
                plugins: {
                    legend: {
                        display: false
                    }
                }
            }
        });

        // Student Trends Line Chart with smooth curves
        new Chart(document.getElementById('studentTrendsChart'), {
            type: 'line',
            data: {
                labels: ['Korangi', 'Munawar', 'Online Academy', 'Islamabad'],
                datasets: [{
                    label: 'Students per Campus',
                    data: [
                        {{ $total_korangi_students }},
                        {{ $total_munawar_students }},
                        {{ $total_online_academy_students }},
                        {{ $total_Islamabad_students }}
                    ],
                    borderColor: '#36A2EB',
                    backgroundColor: 'rgba(54, 162, 235, 0.1)',
                    tension: 0.4,
                    fill: true,
                    pointBackgroundColor: '#ffffff',
                    pointBorderColor: '#36A2EB',
                    pointBorderWidth: 2,
                    pointRadius: 4
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        // New Freeze Students Stacked Bar Chart
        new Chart(document.getElementById('freezeStudentsChart'), {
            type: 'bar',
            data: {
                labels: ['Korangi', 'Munawar', 'Online Academy', 'Islamabad'],
                datasets: [{
                    label: 'Active Students',
                    data: [
                        {{ $total_korangi_students - ($freeze_korangi_students ?? 0) }},
                        {{ $total_munawar_students - ($freeze_munawar_students ?? 0) }},
                        {{ $total_online_academy_students - ($freeze_online_academy_students ?? 0) }},
                        {{ $total_Islamabad_students - ($freeze_Islamabad_students ?? 0) }}
                    ],
                    backgroundColor: '#4BC0C0'
                }, {
                    label: 'Freeze Students',
                    data: [
                        {{ $freeze_korangi_students ?? 0 }},
                        {{ $freeze_munawar_students ?? 0 }},
                        {{ $freeze_online_academy_students ?? 0 }},
                        {{ $freeze_Islamabad_students ?? 0 }}
                    ],
                    backgroundColor: '#FF6384'
                }]
            },
            options: {
                responsive: true,
                scales: {
                    x: {
                        stacked: true
                    },
                    y: {
                        stacked: true,
                        beginAtZero: true
                    }
                },
                plugins: {
                    tooltip: {
                        callbacks: {
                            label: function(context) {
                                let label = context.dataset.label || '';
                                let value = context.raw || 0;
                                return `${label}: ${value}`;
                            }
                        }
                    }
                }
            }
        });
    });
</script>
