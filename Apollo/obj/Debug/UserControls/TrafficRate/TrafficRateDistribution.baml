   M S B A M L   `   `   `  ����Y  UWPFVisifire.Charts, Version=4.0.2.2, Culture=neutral, PublicKeyToken=9f1c752402bc35c9M9clr-namespace:Visifire.Charts;assembly=WPFVisifire.ChartsVisifire.Charts  5      
 Apollo$   Apollo.TrafficRateDistribution   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      OVisifire_Charts9clr-namespace:Visifire.Charts;assembly=WPFVisifire.Charts  5      ` \WIT.Codinator.Stylist.WPF, Version=1.1.0.0, Culture=neutral, PublicKeyToken=3f0477d225f9b0ea)c!http://stylist.codinator.net/2010  5	      -   5          >�Name$  UserControl��5      .��5      � -   5         �Name$ 
LayoutRoot��5      '  !System.Windows.VisualStateManager   CustomVisualStateManager 5      H  BMicrosoft.Expression.Interactivity.Core.ExtendedVisualStateManager  5         VisualStateGroups 5      %  System.Windows.VisualStateGroup  5      -   5        VisualStateGroup��   UseFluidLayout .    Transitions 5      %  System.Windows.VisualTransition  5         GeneratedDuration$ 0:0:1D�6      States. 5         System.Windows.VisualState  -   5        
GridOn��   
Storyboard. 5      �� .��5      T� 	 �� TargetProperty$	 (UIElement.Visibility)�6&   
 �� 
TargetName$

 grid��6Y   ..�5   	   i�  R� KeyTime$ 0��6      System.Windows.Visibility   Visible R� Value# Z 6,   5   	   T� 5      $	 (UIElement.Visibility)�6&   $
 grid1��6Y   ..�5   	   i� $ 0��6       Hidden# Z 6,   5   	   5       5!        5"      -   5        GridOff��. 5#      �� .��5$      T� $	 (UIElement.Visibility)�6&   $
 grid1��6Y   ..�5%   	   i� $ 0��6    # Z 6,   5&   	   T� 5'      $	 (UIElement.Visibility)�6&   $

 grid��6Y   ..�5(   	   i� $ 0��6    # Z 6,   5)   	   5*      5+      5,      .+�5.      � -   5        $ grid1��5.   	   .  (System.Windows.Interactivity.Interaction   Triggers 5/      /  )System.Windows.Interactivity.EventTrigger  50         	EventName$ MouseLeftButtonDown��6   .	  (System.Windows.Interactivity.TriggerBase 	  Actions. 51      =
  7Microsoft.Expression.Interactivity.Core.GoToStateAction
   
  	StateName$ GridOn��6   52      .+�54      #  WIT.Codinator.Stylist.Stylist     DropShadowAround J� Effect# �   6      	Materials. 55      0  *WIT.Codinator.Stylist.Materials.Background     Fill
 �����6   :  4WIT.Codinator.Stylist.Materials.Patterns.GridPattern  56         Color$ Black��6      Angle$ 45Q�6+      	Thickness$	 0.5Q�66      Size$ 7Q�6F    J� Opacity$ 0.175Q�6O   57         Visifire.Charts.Chart  58         
Background
 ����    BorderThickness$ 0q�6=      Theme$ Theme2��6Q      Titles 5:         Visifire.Charts.Title     Text$ Datapoints Distribution��6       	FontColor
  � d �!   
FontFamily$'! !/Apollo;component/Fonts/#Segoe WP)�6R   "   ShadowEnabled" . #   DockInsidePlotArea# . $   FontSize$$ 14Q�6�   %   PlotArea% 5<         Visifire.Charts.PlotArea  5=      &   ShadowEnabled$& FalseY�6    '   
Background
' ���� 66   (   AxesX( 5@         Visifire.Charts.Axis  )   Title$) Throughput(Mbps)��6+   *   TitleFontSize$* 15Q�6D   +   TitleFontColor
+ � d �,   TitleFontFamily$', !/Apollo;component/Fonts/#Segoe WP)�6r   -   
AxisLabels- 5A          Visifire.Charts.AxisLabels  5B   	   .   
FontFamily$'. !/Apollo;component/Fonts/#Segoe WP)�6$   /   	FontColor
/ � d �6S   5D      0   AxesY0 5G        $) number��6+   $* 15Q�6:   
+ � d �$', !/Apollo;component/Fonts/#Segoe WP)�6h   - 5H        5I   	   $'. !/Apollo;component/Fonts/#Segoe WP)�6$   
/ � d �6S   5K      1   Series1 5N          Visifire.Charts.DataSeries  2   RenderAs$2 Column=�61   3   LabelEnabled$
3 TrueY�6C   4   
LabelStyle$4 InsideX�6W   5   LabelFontFamily$'5 !/Apollo;component/Fonts/#Segoe WP)�6k   6   
DataPoints6 5P         Visifire.Charts.DataPoint  -   5        7  Name$7 	lessthan2��5P   D   8   
AxisXLabel$
8 <200��6/   9   YValue0   *Visifire.Commons.Converters+ValueConverter$9 0 6W     5Q      -   5        $7 	between24��5Q   D   $8 200-400��6/   $9 0 6W     5R      -	   5        $7 	between46��5R   D   $8 400-600��6/   $9 0 6W     5S      -
   5        $7 	between68��5S   D   $8 600-800��6/   $9 0 6W     5T      -   5        $7 	between89��5T   D   $8 800-900��6/   $9 0 6W     5U      -   5        $7 
between910��5U   E   $8 900-1000��6/   $9 0 6Y     5V      -   5        $7 between1011��5V   F   $8 	1000-1100��6/   $9 0 6[     5W      -   5        $7 
morethan11��5W   E   $8 >1100��6/   $9 0 6Y   5Y      5[      5\      � 5]      -   5        $
 grid��5]   	    5^        5_      $ MouseLeftButtonDown��6   . 5`      
  $ GridOff��6   5a      .+�5c        . 5d         �	#FFC300886   ,  &WIT.Codinator.Stylist.Materials.Glossy  5e      :   Fill
: �����;   Center$; 0.8,0&�6    <   RightOffset$< 0Q�6/   $	 0.1Q�6?   =   
LeftOffset$	= 0.7Q�6M   >   Anchor$	> 0.3Q�6^   5f      �� 5g      $%��Data Distribution(数据分布)��6   $
��Left=�6-   $	��Top=�6H   $��16(�6`   $'��!/Apollo;component/Fonts/#Segoe WP)�6n   
�������6�   �� 5h      -   5        ? ��Name$? numberOfPoints��5h      $��0��6#   $��Right=�6/   $��32(�6K   $��0,0,68,0q�6Y   $'��!/Apollo;component/Fonts/#Segoe WP)�6k   $��Bottom=�6�   �� 5i      $��
DataPoints��6   $��Right=�6    $��0q�6<   $��Bottom=�6G   $'��!/Apollo;component/Fonts/#Segoe WP)�6b   
�������6�   5j      5k      5l      