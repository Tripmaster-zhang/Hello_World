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
	/// Interaction logic for HeaderButtonView.xaml
	/// </summary>
	public partial class HeaderButtonView : UserControl
	{
		public HeaderButtonView()
		{
			this.InitializeComponent();
		}

        private void HandleHeaderPreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            Window mainwindow = Window.GetWindow(this);
            if (Mouse.LeftButton == MouseButtonState.Pressed)
            {
                mainwindow.DragMove();
            }

            if (e.ClickCount == 2)
            {
                HandleRestoreClick(null, null);
            }
        }

        private void HandleMinimizeClick(object sender, RoutedEventArgs e)
        {
            Window mainwindow = Window.GetWindow(this);
            mainwindow.WindowState = WindowState.Minimized;
        }

        private void HandleRestoreClick(object sender, RoutedEventArgs e)
        {
            Window mainwindow = Window.GetWindow(this);
            mainwindow.WindowState = (mainwindow.WindowState == WindowState.Normal) ?
                WindowState.Maximized : WindowState.Normal;
			
			if (mainwindow.WindowState == WindowState.Maximized)
                MaxSymbol.Text = "2";
            else
                MaxSymbol.Text = "1";
        }

        private void HandleCloseClick(object sender, RoutedEventArgs e)
        {
            Window mainwindow = Window.GetWindow(this);
            mainwindow.Close();
        }
	}
}