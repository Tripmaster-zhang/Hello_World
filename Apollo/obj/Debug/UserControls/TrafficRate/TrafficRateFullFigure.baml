   M S B A M L   `   `   `  ����A  =Apollo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ApolloApollo  5      Y UWPFVisifire.Charts, Version=4.0.2.2, Culture=neutral, PublicKeyToken=9f1c752402bc35c9M9clr-namespace:Visifire.Charts;assembly=WPFVisifire.ChartsVisifire.Charts 5      "    Apollo.TrafficRateFullFigure   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      &localclr-namespace:Apollo     5      UVisifire_Charts9clr-namespace:Visifire.Charts;assembly=WPFVisifire.Charts     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  6G   ` \WIT.Codinator.Stylist.WPF, Version=1.1.0.0, Culture=neutral, PublicKeyToken=3f0477d225f9b0ea)c!http://stylist.codinator.net/2010  5	      .��5      � -   5          �Name$  
LayoutRoot��5      '  !System.Windows.VisualStateManager   CustomVisualStateManager 5      H  BMicrosoft.Expression.Interactivity.Core.ExtendedVisualStateManager  5         VisualStateGroups 5      %  System.Windows.VisualStateGroup  5      -   5        VisualStateGroup��   UseFluidLayout .    Transitions 5      %  System.Windows.VisualTransition  5         GeneratedDuration$ 0:0:1D�6      States. 5         System.Windows.VisualState  -   5        
GridOn��   
Storyboard. 5      �� .��5      T�  �� TargetProperty$ (UIElement.Visibility)�6&   	 �� 
TargetName$
	 grid��6Y   ..�5   	   i� 
 R� KeyTime$
 0��6      System.Windows.Visibility   Visible R� Value# Z 6,   5   	   T� 5      $ (UIElement.Visibility)�6&   $	 grid1��6Y   ..�5   	   i� $
 0��6       Hidden# Z 6,   5   	   5      5         5!      -   5        GridOff��. 5"      �� .��5#      T� $ (UIElement.Visibility)�6&   $
	 grid��6Y   ..�5$   	   i� $
 0��6     5%   
    5&      
Hidden=�6   5(   
   5)   	   T� 5*      $ (UIElement.Visibility)�6&   $	 grid1��6Y   ..�5+   	   i� $
 0��6    # Z 6,   5,   	   5-      5.      5/      .+�51   
   � -   5        $  grid1��51      .  (System.Windows.Interactivity.Interaction   Triggers 52      /  )System.Windows.Interactivity.EventTrigger  53         	EventName$ MouseLeftButtonDown��6   .	  (System.Windows.Interactivity.TriggerBase 	  Actions. 54      =
  7Microsoft.Expression.Interactivity.Core.GoToStateAction
   
  	StateName$ GridOn��6    55      .+�57      #  WIT.Codinator.Stylist.Stylist     DropShadowAround J� Effect# �   6      	Materials. 58      0  *WIT.Codinator.Stylist.Materials.Background     Fill
 �����6   :  4WIT.Codinator.Stylist.Materials.Patterns.GridPattern  59         Color$ Black��6      Angle$ 45Q�6"      	Thickness$	 0.5Q�6-      Size$ 7Q�6=    J� Opacity$ 0.175Q�6F   5:        Visifire.Charts.Chart  5;         
Background
 ����    Theme$ Theme2��64      BorderThickness$ 0q�6C      SamplingThreshold$
 1200��6W      ScrollingEnabled$ FalseX�6p   $��0q�6�      
TrendLines 5=        Visifire.Charts.TrendLine      Value$
  1024��6!   !   	LineStyle$! Dotted=�6.   "   	LineColor
" � ���6A   #   Titles# 5@        Visifire.Charts.Title  $   Text$$ Overview��6   %   	FontColor
% � d �&   
FontFamily$'& !/Apollo;component/Fonts/#Segoe WP)�6C   '   ShadowEnabled' . (   DockInsidePlotArea( . )   FontSize$) 14Q�6�   *   PlotArea* 5B        Visifire.Charts.PlotArea  5C      +   ShadowEnabled$+ FalseY�6    ,   
Background
, ���� 66   -   AxesX- 5F        Visifire.Charts.Axis  .   
AxisLabels. 5G         Visifire.Charts.AxisLabels  5H   	   /   Enabled$/ FalseY�6$   5J      0   AxesY0 5N        1   Interval$	1 250X�6   . 5O        5P   	   2   
FontFamily$'2 !/Apollo;component/Fonts/#Segoe WP)�6$   3   	FontColor
3 � d �6S   5R      4   Series4 5V         Visifire.Charts.DataSeries  -   5        5  Name$5 
FullFigure��5V   7   6   RenderAs$6 	QuickLine=�6"   7   LineThickness$7 1X�6K   8   Color
8 � � �6]   5X      5Y      � 5Z      -   5        $
  grid��5Z   	    5[        5\      $ MouseLeftButtonDown��6   . 5]      
  $ GridOff��6   5^      .+�5`        . 5a         �#DE4A4A6   ,  &WIT.Codinator.Stylist.Materials.Glossy  5b      9   Fill
9 �����:   Center$: 0.8,0&�6    ;   RightOffset$; 0Q�6/   $	 0.1Q�6?   <   Anchor$	< 0.5Q�6M   =   
LeftOffset$= 1Q�6Z   5c      �� 5d      $��Constellation��6   $
��Left=�6#   $	��Top=�6>   
�������$��16(�6i   $'��!/Apollo;component/Fonts/#Segoe WP)�6w   5e      5f      5g      