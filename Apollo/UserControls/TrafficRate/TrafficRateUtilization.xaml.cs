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

namespace Apollo
{
	/// <summary>
	/// Interaction logic for TrafficRateUtilization.xaml
	/// </summary>
	public partial class TrafficRateUtilization : UserControl
	{
		public TrafficRateUtilization()
		{
			this.InitializeComponent();
            NetSyn.Mydata += new NetSyn.ServerDate(NetSyn_Mydata);
            TrafficRate.TrafficFlush += new TrafficRate.FlushTraffic(TrafficRate_TrafficFlush);
		}
       // double limitation = 1200;

        void NetSyn_Mydata(DataStruct msg)
        {
            //double currentutilization = Math.Round((msg.ber) / limitation * 100, 2);
            utilization.Content = 15.72;//currentutilization;
            myTrUtilizationGauge.Value = 15.72;
            myTrUtilizationGauge.ToolTipText = 15.72 + "%";//currentutilization + "%";
        }

        void TrafficRate_TrafficFlush()
        {
        }
	}
}