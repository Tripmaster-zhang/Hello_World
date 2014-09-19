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
using System.Windows.Threading;

namespace Apollo
{
    /// <summary>
    /// Interaction logic for TrafficRate.xaml
    /// </summary>
    public partial class TrafficRate : UserControl
    {
        public TrafficRate()
        {
            this.InitializeComponent();
            // Insert code required on object creation below this point. 
            NetSyn.CheckedYes += new NetSyn.NetSynIsChecked(NetSyn_CheckedYes);
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += new EventHandler(timer_Tick);
            NetSyn.myFlush += new NetSyn.delFlush(NetSyn_myFlush);
        }
        
        void NetSyn_myFlush()
        {
            if (TrafficFlush != null)
                TrafficFlush();
        }
        TimeSpan timecount = new TimeSpan();
        public delegate void FlushTraffic();
        public static event FlushTraffic TrafficFlush;
        DispatcherTimer timer = new DispatcherTimer();

        void NetSyn_CheckedYes()
        {
            timer.Start();
        }

        void timer_Tick(object sender, EventArgs e)
        {
            timecount = timecount.Add(new TimeSpan(0, 0, 1));
            timeToShow.Content = timecount;
        }

        private void Flush_Click(object sender, RoutedEventArgs e)
        {
            timecount = new TimeSpan();
            timeToShow.Content = "00:00:00";
            if (TrafficFlush != null)
                TrafficFlush();
        }

        private void SaveAs_Click(object sender, RoutedEventArgs e)
        {
            SaveAsImage.ExportToImage(LayoutRoot);
        }

    }
}