   M S B A M L   `   `   `  ����Y  UWPFVisifire.Charts, Version=4.0.2.2, Culture=neutral, PublicKeyToken=9f1c752402bc35c9M9clr-namespace:Visifire.Charts;assembly=WPFVisifire.ChartsVisifire.Charts  5      A =Apollo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ApolloApollo 5	         Apollo.TrafficRateStatic   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  6G   ` \WIT.Codinator.Stylist.WPF, Version=1.1.0.0, Culture=neutral, PublicKeyToken=3f0477d225f9b0ea)c!http://stylist.codinator.net/2010  5      OVisifire_Charts9clr-namespace:Visifire.Charts;assembly=WPFVisifire.Charts  5       localclr-namespace:Apollo  5	      -   5          >�Name$  UserControl��5      .��5      � -   5         �Name$ 
LayoutRoot��5      '  !System.Windows.VisualStateManager   CustomVisualStateManager 5      H  BMicrosoft.Expression.Interactivity.Core.ExtendedVisualStateManager  5         VisualStateGroups 5      %  System.Windows.VisualStateGroup  5      -   5        VisualStateGroup��   UseFluidLayout .    Transitions 5      %  System.Windows.VisualTransition  5         GeneratedDuration$ 0:0:1D�6      States. 5         System.Windows.VisualState  -   5        
GridOn��   
Storyboard. 5      �� .��5      T� 	 �� TargetProperty$	 (UIElement.Visibility)�6&   
 �� 
TargetName$

 grid��6Y   ..�5   	   i�  R� KeyTime$ 0��6      System.Windows.Visibility   Visible R� Value# Z 6,   5   	   T� 5      $	 (UIElement.Visibility)�6&   $
 grid1��6Y   ..�5   	   i� $ 0��6       Hidden# Z 6,   5   	   5       5!        5"      -   5        GridOff��. 5#      �� .��5$      T� $	 (UIElement.Visibility)�6&   $

 grid��6Y   ..�5%   	   i� $ 0��6    # Z 6,   5&   	   T� 5'      $	 (UIElement.Visibility)�6&   $
 grid1��6Y   ..�5(   	   i� $ 0��6    # Z 6,   5)   	   5*      5+      5,      .+�5.      � -   5        $ grid1��5.   	   .  (System.Windows.Interactivity.Interaction   Triggers 5/      /  )System.Windows.Interactivity.EventTrigger  50         	EventName$ MouseLeftButtonDown��6   .	  (System.Windows.Interactivity.TriggerBase 	  Actions. 51      =
  7Microsoft.Expression.Interactivity.Core.GoToStateAction
   
  	StateName$ GridOn��6   52       � RowDefinitions 54      �� 55      $	��18* �6   �� 56      $	��51* �6   �� 57      $	��51* �6   .+�59      #  WIT.Codinator.Stylist.Stylist  $��3��6      DropShadowAround J� Effect# �   6    $��0��6L      	Materials. 5:      0  *WIT.Codinator.Stylist.Materials.Background     Fill
 �����6   :  4WIT.Codinator.Stylist.Materials.Patterns.GridPattern  5;         Color$ Black��6      Angle$ 45Q�6"      	Thickness$	 0.5Q�6-      Size$ 7Q�6=    J� Opacity$ 0.175Q�6F   5<        Apollo.TrafficRateBullet  5=      -   5          Name$ TRBulletMax��5=      $��	15,0,37,0q�62   $��1��6E   $��1��6R     5>      -   5        $ TRBulletAvr��5>      $��	15,0,37,0q�62   $��2��6E   �� 5?      $/��)Max and Avr (最大速率和平均速率)��6   $��0��6-   $��0��6=   $��0,0,0,0q�6J   $��Center=�6[   
���   �$��16(�6�   $'��!/Apollo;component/Fonts/#Segoe WP)�6�   5@      � 5A      -	   5        $
 grid��5A   	    � ColumnDefinitions 5B      �� 5C      $
��0.6* �6   �� 5D      $
��0.4* �6    5F        5G      $ MouseLeftButtonDown��6   . 5H      
  $ GridOff��6   5I      .+�5K        $��2��6   $��2��6    . 5L        
 ��� �6   ,  &WIT.Codinator.Stylist.Materials.Glossy  5M         Fill
 �����   Center$ 0.8,0&�6        RightOffset$  0Q�6/   $	 0.1Q�6?   !   
LeftOffset$	! 0.7Q�6M   "   Anchor$	" 0.3Q�6^   5N      �� 5O      $��Key Statistic��6   $
��Left=�6#   $	��Top=�6>   
�������$��16(�6i   $'��!/Apollo;component/Fonts/#Segoe WP)�6w   �� 5P      $
��Gbps��6   $��Right=�6   $��Bottom=�66   
�������$'��!/Apollo;component/Fonts/#Segoe WP)�6d   $��0q�6�   �� 5Q      $
��Gbps��6   $��Right=�6   $��Bottom=�66   
�������$'��!/Apollo;component/Fonts/#Segoe WP)�6d   $��0q�6�   $��1��6�   �� 5R      -
   5        # ��Name$# avrRateLabel��5R      $��Avr（平均速率）:0��6!   $��Right=�67   $��0,0,40,0q�6S   $��Bottom=�6e   $��20(�6�   $'��!/Apollo;component/Fonts/#Segoe WP)�6�   $��1��6�   �� 5S      -   5        $# maxRateLabel��5S      $��Max（最大速率）:0��6!   $��Right=�67   $��0,0,40,0q�6S   $��Bottom=�6e   $��20(�6�   $'��!/Apollo;component/Fonts/#Segoe WP)�6�   5T      5U      5V      