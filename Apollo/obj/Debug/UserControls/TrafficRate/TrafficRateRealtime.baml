   M S B A M L   `   `   `  ����Y  UWPFVisifire.Charts, Version=4.0.2.2, Culture=neutral, PublicKeyToken=9f1c752402bc35c9M9clr-namespace:Visifire.Charts;assembly=WPFVisifire.ChartsVisifire.Charts  5      
 Apollo    Apollo.TrafficRateRealtime   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      UVisifire_Charts9clr-namespace:Visifire.Charts;assembly=WPFVisifire.Charts     5      ` \WIT.Codinator.Stylist.WPF, Version=1.1.0.0, Culture=neutral, PublicKeyToken=3f0477d225f9b0ea)c!http://stylist.codinator.net/2010  5      h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  6G   -   5          >�Name$  UserControl��5      .��5      � -   5         �Name$ 
LayoutRoot��5      '  !System.Windows.VisualStateManager   VisualStateGroups 5      %  System.Windows.VisualStateGroup  5      -   5        VisualStateGroup��H  BMicrosoft.Expression.Interactivity.Core.ExtendedVisualStateManager   UseFluidLayout .    Transitions 5      %  System.Windows.VisualTransition  5         GeneratedDuration$ 0:0:1D�6      States. 5         System.Windows.VisualState  -   5        
GridOn��   
Storyboard. 5      �� .��5      T�  �� TargetProperty$ (UIElement.Visibility)�6&   	 �� 
TargetName$
	 grid��6Y   ..�5   	   i� 
 R� KeyTime$
 0��6      System.Windows.Visibility   Visible R� Value# Z 6,   5   	   T� 5      $ (UIElement.Visibility)�6&   $	 grid1��6Y   ..�5   	   i� $
 0��6       Hidden# Z 6,   5   	   5      5        5      -   5        GridOff��. 5      �� .��5       T� $ (UIElement.Visibility)�6&   $
	 grid��6Y   ..�5!   	   i� $
 0��6    # Z 6,   5"   	   T� 5#      $ (UIElement.Visibility)�6&   $	 grid1��6Y   ..�5$   	   i� $
 0��6    # Z 6,   5%   	   5&      5'      5(         CustomVisualStateManager 5*        5+      .+�5-      � -   5        $ grid1��5-   	   .  (System.Windows.Interactivity.Interaction   Triggers 5.      /  )System.Windows.Interactivity.EventTrigger  5/         	EventName$ MouseLeftButtonDown��6   .	  (System.Windows.Interactivity.TriggerBase 	  Actions. 50      =
  7Microsoft.Expression.Interactivity.Core.GoToStateAction
   
  	StateName$ GridOn��6   51      .+�53      #  WIT.Codinator.Stylist.Stylist     DropShadowAround J� Effect# �   6      	Materials. 54      0  *WIT.Codinator.Stylist.Materials.Background     Fill
 �����6   :  4WIT.Codinator.Stylist.Materials.Patterns.GridPattern  55         Color$ Black��6      Angle$ 45Q�6"      	Thickness$	 0.5Q�6-      Size$ 7Q�6=    J� Opacity$ 0.175Q�6F   56         Visifire.Charts.Chart  57         
Background
 ����    Theme$ Theme2��64      BorderThickness$ 0q�6C      ScrollingEnabled$ FalseX�6W      
TrendLines 59         Visifire.Charts.TrendLine      Value$  1��6!   !   	LineStyle$! Dotted=�6+   "   	LineColor
" � ���6>   #   Titles# 5<         Visifire.Charts.Title  -   5        $��CurRate��5<      $   Text$h$ bThe Last One Minute Throughput (一分钟内的吞吐量)          Cur（当前速率）:   0 Gbps��6,   %   	FontColor
% �   �&   
FontFamily$'& !/Apollo;component/Fonts/#Segoe WP)�6�   '   ShadowEnabled' .  (   DockInsidePlotArea( . )   FontSize$) 16Q�6�   *   PlotArea* 5>         Visifire.Charts.PlotArea  5?      +   ShadowEnabled$+ FalseY�6    ,   
Background
, ���� 66   -   AxesX- 5B         Visifire.Charts.Axis  .   AxisMinimum$. 0��6+   /   AxisMaximum$/ 60��6;   0   Interval$0 5X�6L   1   Title$1 Time(s)��6Y   2   TitleFontSize$2 15Q�6i   3   TitleFontColor
3 � d �4   TitleFontFamily$'4 !/Apollo;component/Fonts/#Segoe WP)�6�   5   
AxisLabels5 5C          Visifire.Charts.AxisLabels  5D      6   	FontColor
6 � d �7   
FontFamily$'7 !/Apollo;component/Fonts/#Segoe WP)�6O   5F      8   AxesY8 5I        $
0 0.25X�6+   $. 0��6;   $
/ 1.25��6K   $1 Throughput(Gbps)��6^   $2 15Q�6w   
3 � d �$'4 !/Apollo;component/Fonts/#Segoe WP)�6�   9   Grids9 5K   	      Visifire.Charts.ChartGrid  :   Enabled$: FalseY�6#   5 5M        5N   	   $'7 !/Apollo;component/Fonts/#Segoe WP)�6$   
6 � d �6S   5P      ;   Series; 5T          Visifire.Charts.DataSeries  -   5        <  Name$< Realtime��5T   2   =   RenderAs$
= Area=�6"   >   MovingMarkerEnabled> . 6D   5V      5W      � 5X      -	   5        $
 grid��5X   	    5Y        5Z      $ MouseLeftButtonDown��6   . 5[      
  $ GridOff��6   5\      .+�5^        . 5_         �	#FF00ACFF6   ,  &WIT.Codinator.Stylist.Materials.Glossy  5`      ?   Fill
? �����@   Center$@ 0.8,0&�6    A   RightOffset$A 0Q�6/   $	 0.1Q�6?   B   Anchor$	B 0.4Q�6M   C   
LeftOffset$	C 0.9Q�6Z   5a      �� 5b      $��Throughput(吞吐量)��6   $
��Left=�6%   $	��Top=�6@   $��16(�6X   
�������$'��!/Apollo;component/Fonts/#Segoe WP)�6y   �� 5c      $
��Gbps��6   $��Right=�6   $��Bottom=�66   $'��!/Apollo;component/Fonts/#Segoe WP)�6Q   
�������6�   �� 5d      -
   5        D ��Name$D currentRate��5d      $��0��6    $��Right=�6,   $��0,0,40,0q�6H   $��Bottom=�6Z   $'��!/Apollo;component/Fonts/#Segoe WP)�6u   $��20(�6�   5e      5f      5g      