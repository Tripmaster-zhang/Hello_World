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
using System.Windows.Threading;
using System.Net;
using System.Net.Sockets;
using System.IO;

namespace Apollo
{
    /// <summary>
    /// Interaction logic for NetSyn.xaml
    /// </summary>
    public partial class NetSyn : UserControl
    {
        public NetSyn()
        {
            this.InitializeComponent();
        }
        public delegate void ServerDate(DataStruct msg);//委托事件ServerDate，以msg为参数。
        public static event ServerDate Mydata;//订阅事件Mydata，当触发事件Mydata，便开始执行委托事件ServerDate。
        //委托事件ServerDate中有方法NetSyn_Mydata(分别在各个xaml文件的各个类下)，然后这些方法便开始执行
        DataStruct message = new DataStruct();
        //IPEndPoint RemoteIpEndPoint = new IPEndPoint(IPAddress.Any, 0);
        IPEndPoint RemoteIpEndPoint = new IPEndPoint(IPAddress.Parse("192.168.10.90"), 8000);
        byte[] buffer = new byte[1316];
        DispatcherTimer timer = new DispatcherTimer();

        public delegate void NetSynIsChecked();
        public static event NetSynIsChecked CheckedYes;

        void timer_Tick(object sender, EventArgs e)
        {
            try
            {
                UdpClient udpClient = new UdpClient(8000);
                udpClient.Connect(RemoteIpEndPoint);
                buffer = udpClient.Receive(ref RemoteIpEndPoint);
                DataNotify(buffer);
                if (udpClient != null)//if(socket.connected)
                    udpClient.Close();
            }
            catch (IOException)
            {
                timer.Stop();
                MessageBox.Show("Server is closed");
            }
            catch (NullReferenceException)
            {
                return;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            timer.Start(); 
            timer.Interval = TimeSpan.FromMilliseconds(1);//获取或设置计时器刻度之间的时间量。//TimeSpan.FromSeconds(1);
            timer.Tick += new EventHandler(timer_Tick);
        }

        public void DataNotify(byte[] buffer)
        {
            message = (DataStruct)BytesToStruct(buffer, message.GetType());
            if (Mydata != null)
                Mydata(message);
            if (CheckedYes != null)
                CheckedYes();
        }

        public delegate void delFlush();
        public static event delFlush myFlush;
        private void flushAll_Click(object sender, RoutedEventArgs e)
        {
            if (myFlush != null)
                myFlush();
        }
    }
}