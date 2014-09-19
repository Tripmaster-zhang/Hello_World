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
	/// Interaction logic for TrafficRateDistribution.xaml
	/// </summary>
	public partial class TrafficRateDistribution : UserControl
	{
		public TrafficRateDistribution()
		{
			this.InitializeComponent();
            NetSyn.Mydata += new NetSyn.ServerDate(NetSyn_Mydata);
            TrafficRate.TrafficFlush += new TrafficRate.FlushTraffic(TrafficRate_TrafficFlush);
		}
        int number = 0; 

        void NetSyn_Mydata(DataStruct msg)
        {
            number++;
            numberOfPoints.Content = number;
            int packagenumber = msg.trafficRate;
            double rate = packagenumber *448.0 * 8.0 * 1000000.0 / 7 / 600.0 / 1024 / 1024;
            if (rate <= 200)
                lessthan2.YValue++;
            if (rate > 200 && rate <= 400)
                between24.YValue++;
            if (rate > 400 && rate <= 600)
                between46.YValue++;
            if (rate > 600 && rate <= 800)
                between68.YValue++;
            if (rate > 4800 && rate <= 900)
                between89.YValue++;
            if (rate > 900 && rate <= 1000)
                between910.YValue++;
            if (rate > 1000 && rate <= 1100)
                between1011.YValue++;
            if (rate > 1100)
                morethan11.YValue++;
        }
		
        void TrafficRate_TrafficFlush()
        {
            lessthan2.YValue = 0;
            between24.YValue = 0;
            between46.YValue = 0;
            between68.YValue = 0;
            between89.YValue = 0;
            between910.YValue = 0;
            between1011.YValue = 0;
            morethan11.YValue = 0;
			number = 0;
			numberOfPoints.Content = 0;
        }
	}
}