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
using System.Windows.Shapes;
using Visifire.Charts;

namespace Apollo
{
	/// <summary>
	/// Interaction logic for TrafficRateFullFigure.xaml
	/// </summary>
	public partial class TrafficRateFullFigure : UserControl
	{
		public TrafficRateFullFigure()
		{
			this.InitializeComponent();
            NetSyn.Mydata += new NetSyn.ServerDate(NetSyn_Mydata);
            TrafficRate.TrafficFlush += new TrafficRate.FlushTraffic(TrafficRate_TrafficFlush);
			// Insert code required on object creation below this point.
		}

        void NetSyn_Mydata(DataStruct msg)
        {
            int packagenumber = msg.trafficRate;
            double rate = packagenumber * 472.0 * 8.0 / 5000.0;
            DataPoint dataPoint = new DataPoint();
            dataPoint.YValue = rate;
            FullFigure.DataPoints.Add(dataPoint);
        }

        void TrafficRate_TrafficFlush()
        {
            FullFigure.DataPoints.Clear();
        }
	}
}