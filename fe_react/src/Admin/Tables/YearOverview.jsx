import Box from '@mui/material/Box'
import Card from '@mui/material/Card'
import Button from '@mui/material/Button'
import { useTheme } from '@mui/material/styles'
import CardHeader from '@mui/material/CardHeader'
import IconButton from '@mui/material/IconButton'
import Typography from '@mui/material/Typography'
import CardContent from '@mui/material/CardContent'
import DotsVertical from 'mdi-material-ui/DotsVertical'
import ReactApexCharts from 'react-apexcharts';
import { useEffect, useState } from 'react'
import api from '../../Config/api'

const YearOverview = () => {
  const theme = useTheme();

  const [reportYearly, setReportYearly] = useState([]);
  const [lables, setLables] = useState([]);
  

  useEffect(()=>{
    const getData = async ()=>{
        const res = await api.get(`/api/dashboard/yearly-revenue`)
        if(res.data){
          setReportYearly(res.data.map((item)=>item.totalRevenue))
          setLables(res.data.map((item)=>item.year))
        }
    }
    getData()
},[])


  const options = {
    chart: {
      parentHeightOffset: 0,
      toolbar: { show: false }
    },
    plotOptions: {
      bar: {
        borderRadius: 9,
        distributed: true,
        columnWidth: '30px',
        endingShape: 'rounded',
        startingShape: 'rounded'
      }
    },
    stroke: {
      width: 2,
      colors: [theme.palette.background.paper]
    },
    legend: { show: false },
    grid: {
      strokeDashArray: 7,
      padding: {
        top: -1,
        right: 0,
        left: -12,
        bottom: 5
      }
    },
    dataLabels: { enabled: false },
    // colors: [
    //   'red', 'blue','white'
    // ],
    states: {
      hover: {
        filter: { type: 'none' }
      },
      active: {
        filter: { type: 'none' }
      }
    },
    xaxis: {
      categories: lables,
      tickPlacement: 'on',
      labels: { show: true },
      axisTicks: { show: false },
      axisBorder: { show: false }
    },
    yaxis: {
      show: true,
      tickAmount: 4,
      labels: {
        offsetX: -17,
        formatter: value => `${value > 999 ? `${(value / 1000).toFixed(0)}` : value}k`
      }
    }
  }

  return (
    <Card className='h-full'>
      <CardHeader
        title='Doanh thu các năm'
        titleTypographyProps={{
          sx: { lineHeight: '0rem !important', letterSpacing: '0.15px !important' }
        }}
        action={
          <IconButton size='small' aria-label='settings' className='card-more-options' sx={{ color: 'text.secondary' }}>
            <DotsVertical />
          </IconButton>
        }
      />
      <CardContent sx={{ '& .apexcharts-xcrosshairs.apexcharts-active': { opacity: 0 } }}>
        <ReactApexCharts  type='bar' height={201} options={options} series={[{ data: reportYearly }]} />
        <Box sx={{ mb: 5, display: 'flex', alignItems: 'center' }}>
          {/* <Typography variant='h5' sx={{ mr: 4 }}>
            Tổng doanh thu {totalRevenue.toLocaleString()} VND
          </Typography> */}
          {/* <Typography variant='body2'>T</Typography> */}
        </Box>
        {/* <Button fullWidth variant='contained'>
          Details
        </Button> */}
      </CardContent>
    </Card>
  )
}

export default YearOverview
