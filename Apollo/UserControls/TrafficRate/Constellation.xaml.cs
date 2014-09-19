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
	/// Interaction logic for Constellation.xaml
	/// </summary>
	public partial class Constellation : UserControl
	{
		public Constellation()
		{
			this.InitializeComponent();
            NetSyn.myFlush += new NetSyn.delFlush(NetSyn_myFlush);
		}

        void NetSyn_myFlush()
        {
            if (myConFlush != null)
                myConFlush();
        }
        public delegate void delConFlush();
        public static event delConFlush myConFlush;

        private void conFlush_Click(object sender, RoutedEventArgs e)
        {
            if (myConFlush != null)
                myConFlush();
        }
	}
}