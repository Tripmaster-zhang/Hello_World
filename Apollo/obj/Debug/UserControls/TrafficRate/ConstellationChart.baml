   M S B A M L   `   `   `  ����Y  UWPFVisifire.Charts, Version=4.0.2.2, Culture=neutral, PublicKeyToken=9f1c752402bc35c9M9clr-namespace:Visifire.Charts;assembly=WPFVisifire.ChartsVisifire.Charts  5      
 Apollo   Apollo.ConstellationChart   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      UVisifire_Charts9clr-namespace:Visifire.Charts;assembly=WPFVisifire.Charts     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  6J   ` \WIT.Codinator.Stylist.WPF, Version=1.1.0.0, Culture=neutral, PublicKeyToken=3f0477d225f9b0ea)c!http://stylist.codinator.net/2010  5      -   5          >�Name$  UserControl��5      .��5      � -   5         �Name$ 
LayoutRoot��5      '  !System.Windows.VisualStateManager   CustomVisualStateManager 5   
   H  BMicrosoft.Expression.Interactivity.Core.ExtendedVisualStateManager  5         VisualStateGroups 5   
   %  System.Windows.VisualStateGroup  5      -   5        VisualStateGroup��   UseFluidLayout .    Transitions 5      %  System.Windows.VisualTransition  5         GeneratedDuration$ 0:0:1D�6'      States. 5         System.Windows.VisualState  -   5        
GridOn��   
Storyboard. 5      �� .��5      T� 	 �� TargetProperty$	 (UIElement.Visibility)�68   
 �� 
TargetName$

 grid��6k   ..�5      i�  R� KeyTime$ 0��65     System.Windows.Visibility   Visible R� Value# Z 6A   5      T� 5      $	 (UIElement.Visibility)�68   $
 grid1��6k   ..�5      i� $ 0��65      Hidden# Z 6A   5      5      5         5!      -   5        GridOff��. 5"      �� .��5#      T� $	 (UIElement.Visibility)�68   $

 grid��6k   ..�5$      i� $ 0��65    5%   "    5&   &   
Hidden=�69   5(      5)      T� 5*      $	 (UIElement.Visibility)�68   $
 grid1��6k   ..�5+      i� $ 0��65   # Z 6A   5,      5-      5.      5/      .+�51   
   � -   5        $ grid1��51       � RowDefinitions 52      �� 53      $��0.09* �6   �� 54      $��0.85* �6   �� 55      $��0.06* �6   .  (System.Windows.Interactivity.Interaction   Triggers 57      /  )System.Windows.Interactivity.EventTrigger  58         	EventName$ MouseLeftButtonDown��6!   .	  (System.Windows.Interactivity.TriggerBase 	  Actions. 59      =
  7Microsoft.Expression.Interactivity.Core.GoToStateAction
   
  	StateName$ GridOn��6)   5:      .+�5<      #  WIT.Codinator.Stylist.Stylist     DropShadowAround J� Effect# �   6   $��3��6D      	Materials. 5=      0  *WIT.Codinator.Stylist.Materials.Background     Fill
 �����6   :  4WIT.Codinator.Stylist.Materials.Patterns.GridPattern  5>         Color$ Black��6      Angle$ 45Q�6*      	Thickness$	 0.5Q�65      Size$ 7Q�6E    J� Opacity$ 0.175Q�6N   5?         Visifire.Charts.Chart  5@      $��0��6$   $��1��64      
Background
 ����    ZoomingEnabled .    BorderThickness$ 0q�6p      Theme$ Theme3��6�       View3D  .  &    Visifire.Commons.VisifireControl!   ToolBarEnabled! .  "   ColorSet$" VisiBlue��6�   $��0,0,0,0q�6�   $��1��6�   #   ScrollingEnabled# 6�   Z� $   Titles$ 5B         Visifire.Charts.Title  %   Enabled$% FalseY�6(   &   PlotArea& 5D         Visifire.Charts.PlotArea  5E      '   ShadowEnabled$
' TrueY�6+   (   
TrendLines( 5H         Visifire.Charts.TrendLine  )   LineThickness$) 1Q�6,   *   Value$* 0��6>   +   Enabled$+ FalseY�6H   ,   AxesX, 5K         Visifire.Charts.Axis  -   AxisMinimum$
- -1.2��6'   .   AxisMaximum$	. 1.2��6:   /   Interval$	/ 0.2X�6L   0   StartFromZero$
0 TrueY�6[   1   	LineStyle$1 Solid=�6p   2   AxisType$2 Primary=�6�   3   Grids3 5M         Visifire.Charts.ChartGrid  4   Interval$	4 0.2X�64   5   	LineColor
5 �   �6   Enabled$
6 TrueY�6U   7   	LineStyle$7 Solid=�6d   8   Ticks8 5P         Visifire.Charts.Ticks  9   Interval$	9 0.1X�60   :   Enabled$: FalseY�6?   ;   	LineStyle$; Solid=�6O   5R      <   AxesY< 5U        $
- -1.2��6'   $	. 1.2��6:   $	/ 0.2X�6L   $
0 TrueY�6[   $1 Solid=�6p   $2 Primary=�6�   3 5W        $	4 0.2X�64   
5 �   �$
6 TrueY�6U   $7 Solid=�6d   8 5Z        $	9 0.1X�60   $: FalseY�6?   $; Solid=�6O   5\      =   Series= 5_          Visifire.Charts.DataSeries  -   5        >  Name$> myChart��5_   .   ?   RenderAs$? Point=�6?   @   Color
@ ��  �A   LineThickness$	A 1.5X�6]   B   MarkerEnabled$B FalseY�6q   5a      �� 5b      $��1��6   $��0��6   $��Constellation(星座图)��6)   $��Center=�6F   
���   �$��16(�6v   $'��!/Apollo;component/Fonts/#Segoe WP)�6�   $��0,0,0,0q�6�   5c      � 5d      -   5        $
 grid��5d       5e   
     5f      $ MouseLeftButtonDown��6   . 5g      
  $ GridOff��6%   5h      .+�5j   
     . 5k         �#DE4A4A6   ,  &WIT.Codinator.Stylist.Materials.Glossy  5l      C   Fill
C �����D   Center$D 0.8,0&�6(   E   RightOffset$E 0Q�67   $	 0.1Q�6G   F   Anchor$	F 0.5Q�6U   G   
LeftOffset$G 1Q�6b   5m      �� 5n   
   $��Constellation(星座图)��6   $
��Left=�6-   $	��Top=�6H   
�������$��16(�6s   $'��!/Apollo;component/Fonts/#Segoe WP)�6�   5o      5p      5q      