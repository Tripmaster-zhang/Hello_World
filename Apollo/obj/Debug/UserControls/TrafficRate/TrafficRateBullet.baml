   M S B A M L   `   `   `  ����Y  UWPFVisifire.Charts, Version=4.0.2.2, Culture=neutral, PublicKeyToken=9f1c752402bc35c9M9clr-namespace:Visifire.Charts;assembly=WPFVisifire.ChartsVisifire.Charts  5      
 Apollo   Apollo.TrafficRateBullet   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      UVisifire_Charts9clr-namespace:Visifire.Charts;assembly=WPFVisifire.Charts     5      -   5          >�Name$  UserControl��5	      .��5      � -   5         �Name$ 
LayoutRoot��5      .+�5         Visifire.Charts.Chart     BorderThickness$ 0q�6      
Background
 ����    Theme$ Theme2��6G   $��50��6V      AxesX 5         Visifire.Charts.Axis     
AxisLabels 5          Visifire.Charts.AxisLabels  5         Enabled$ FalseY�6#   5         AxesY 5        	   AxisMaximum$		 1.2��6   
   Interval$	
 0.2X�6-    5        5         
FontFamily$' !/Apollo;component/Fonts/#Segoe WP)�6#      	FontColor
 � d �6R   5         
TrendLines 5         Visifire.Charts.TrendLine     
StartValue$ 0��6       EndValue$	 0.4��6/      Orientation$ Vertical=�6>      	LineColor �	#FF117FAC6U     5      $	 0.4��6    $	 0.8��61    �	#FF44B8E7$ Vertical=�6V     5      $	 0.8��6    $	 1.2��61    �	#FF9DE2FF$ Vertical=�6V     5          Value$ 1��6    
 �   �$ Vertical=�6<     5!      -   5          Name$ myTrendlineLabel��5!       $ 1��6:   $ 
Horizontal=�6D      LabelFontFamily$' !/Apollo;component/Fonts/#Segoe WP)�6]      LabelFontColor
 � d �6�      Series 5$          Visifire.Charts.DataSeries     RenderAs$	 Bar=�6!      
DataPoints 5&         Visifire.Charts.DataPoint  -   5          Name$ myBulletValue��5&   "      Color
 �  ��69   5(      5*      5+      5,      