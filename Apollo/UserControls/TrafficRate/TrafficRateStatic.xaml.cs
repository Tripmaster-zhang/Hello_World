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
using System.Collections;

namespace Apollo
{
	/// <summary>
	/// Interaction logic for TrafficRateStatic.xaml
	/// </summary>
	public partial class TrafficRateStatic : UserControl
	{
		public TrafficRateStatic()
		{
			this.InitializeComponent();
            TRBulletMax.myTrendlineLabel.LabelText = "Max（最大速率）";
            TRBulletMax.myBulletValue.AxisXLabel = "Max TrafficRate";
            TRBulletAvr.myTrendlineLabel.LabelText = "Avr（平均速率）";
            TRBulletAvr.myBulletValue.AxisXLabel = "Average TrafficRate";
            NetSyn.Mydata += new NetSyn.ServerDate(NetSyn_Mydata);
            TrafficRate.TrafficFlush += new TrafficRate.FlushTraffic(TrafficRate_TrafficFlush);
		}
        double maxRate = 0;
//        int numberA = 0;
        int number=0;
        int Interval = 1;
        int trafficRate_odd;
        int trafficRate_even;
        double averageRate = 0;
        double averageRatemin = 0;
        int arrayindex = -1;
        bool Isfirstround = true; 
        double[] arraymin = new double[60];
        int packagenumber = 0;
//        double averageRateA=0;
//        int maxNumber=0;

        void NetSyn_Mydata(DataStruct msg)
        {
            if (msg.cpudet == 1)
                trafficRate_odd = msg.trafficRate;
            else
                trafficRate_even = msg.trafficRate;

            packagenumber = trafficRate_even + trafficRate_odd;

            double rate = packagenumber * 448.0 * 8.0*1000000.0 /7/600.0/1024/1024/1024; //*****************
            if (rate > maxRate)
            {
                maxRateLabel.Content = "Max（最大速率）:" + ((int)(rate*1000))/1000.0;
                maxRate = rate;
                TRBulletMax.myBulletValue.YValue = maxRate;
            }
 //           if (maxNumber == 0)
 //           {
            number++;

            if (arrayindex == -1)
            {
                arraymin[arrayindex + 1] = rate;
                arrayindex = (arrayindex + 1) % 60;
                averageRatemin = rate;
            }
            else
            {
                if (arraymin[arrayindex] != rate)
                {
                    if (arrayindex == 59)
                    {
                        Isfirstround = false;
                    }
                    if (Isfirstround == true)
                        averageRatemin = averageRatemin * (arrayindex + 1) / (arrayindex + 2) + rate / (arrayindex + 2);
                    else
                        averageRatemin = (averageRatemin * 60 - arraymin[(arrayindex + 1) % 60] + rate) / 60;
                    arraymin[(arrayindex + 1) % 60] = rate;
                    arrayindex = (arrayindex + 1) % 60;
                }
            }
            
            averageRate = averageRate * (number - 1) / number + rate / number;
            avrRateLabel.Content = "Avr（平均速率）:" + ((int)(averageRatemin*1000))/1000.0;
            TRBulletAvr.myBulletValue.YValue = averageRatemin;
//            }
//            else
//            {
//                Queue averageRates = new Queue();
//                if (numberA <= maxNumber)
//                {
//                    numberA++; number++;
//                    averageRates.Enqueue(rate);
//                    averageRateA = averageRateA * (number - 1) / number + rate / number;
//                }
//                else
  //              {
//                    double rateOld = (double)averageRates.Dequeue();
//                    averageRateA = (averageRateA * number - rateOld) / (number - 1);
//                    averageRates.Enqueue(rate);
//                    averageRateA = averageRateA * (number - 1) / number + rate / number;
//                }//程序待修改，目前无法将数组移位，并始终求得naxNumber个rate值的平均值。后改，未检查
//                avrRateLabel.Content = "A:" + (int)averageRateA;
//                TRBulletAvr.myBulletValue.YValue = averageRateA;
//            }
        }

        void TrafficRate_TrafficFlush()
        {
            maxRate = 0;
            number = 0;
            averageRate = 0;
            maxRateLabel.Content = "M:0";
            TRBulletMax.myBulletValue.YValue = 0;
            avrRateLabel.Content = "A:0";
            TRBulletAvr.myBulletValue.YValue = 0;
        }

//        private void button1_Click(object sender, RoutedEventArgs e)
//        {
//            maxNumber = Int32.Parse(textBox1.Text);

//        }
	}
}