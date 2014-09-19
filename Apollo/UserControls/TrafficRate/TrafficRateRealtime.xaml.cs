using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Visifire.Charts;

namespace Apollo
{
	/// <summary>
	/// Interaction logic for TrafficRateRealtime.xaml
	/// </summary>
	public partial class TrafficRateRealtime : UserControl
	{
		public TrafficRateRealtime()
		{
			this.InitializeComponent();
            NetSyn.Mydata += new NetSyn.ServerDate(NetSyn_Mydata);
            TrafficRate.TrafficFlush += new TrafficRate.FlushTraffic(TrafficRate_TrafficFlush);
		}
        int numbertoshow = 60;
        int trafficRate_odd;
        int trafficRate_even;
        int packagenumber = 0;

        void NetSyn_Mydata(DataStruct msg)
        {
            //int packagenumber = msg.trafficRate;//*******************

            if (msg.cpudet == 1)
                trafficRate_odd = msg.trafficRate;
            else
                trafficRate_even = msg.trafficRate;

            packagenumber = trafficRate_even + trafficRate_odd;

            double rate = packagenumber * 448.0 * 8.0 * 1000000.0 / 7 / 600.0 / 1024 / 1024 / 1024;//该公式待修改。**************************
            currentRate.Content = ((int)(rate*1000))/1000.0;//待修改~~等待数据过来完全无问题后可用于直接显示吞吐量。
			CurRate.Text = "The Last One Minute Throughput (一分钟内的吞吐量)       Cur（当前速率）:" + ((int)(rate*1000))/1000.0 + "Gbps";
            DataPoint dataPoint = new DataPoint();
            dataPoint.YValue = rate;
            Realtime.DataPoints.Add(dataPoint);
            while (Realtime.DataPoints.Count > numbertoshow)
            {
                Realtime.DataPoints.Remove(Realtime.DataPoints[0]);
            }
        }

        void TrafficRate_TrafficFlush()
        {
            Realtime.DataPoints.Clear();
            currentRate.Content = 0;
        }
	}
}