   M S B A M L   `   `   `  ����H  DMahApps.Metro, Version=1.1.0.0, Culture=neutral, PublicKeyToken=nullZ=clr-namespace:MahApps.Metro.Converters;assembly=MahApps.MetroMahApps.Metro.Converters  5   9   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089` \WIT.Codinator.Stylist.WPF, Version=1.1.0.0, Culture=neutral, PublicKeyToken=3f0477d225f9b0eac _Microsoft.Expression.Effects, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35   GoBackButtonStyle  �� 
TargetType �� Property �� Value  DefaultFont  
GrayBrush7  TextBoxBorderBrush  	TextBrush �� 
TargetType'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame	 O� KeyTime
 O� Value ��Name �� CornerRadius J� Opacity  FlushButtonStyle � 	Resources  Key   EasingFunction.  (System.Windows.Media.Animation.PowerEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode#  WIT.Codinator.Stylist.Stylist   	Materials2  ,WIT.Codinator.Stylist.Materials.DetailBorder   	Thickness   LeftBorderBrush � Color � Offset   RightBorderBrush ��Name J� RenderTransformOrigin �� Triggers P� 
SourceName P� Property P� Value N� ExitActions ��Name  Storyboard2 N� EnterActions  Storyboard1 	 SaveasImageButtonStyle     CustomVisualStateManagerH  BMicrosoft.Expression.Interactivity.Core.ExtendedVisualStateManager!  Name" ��Name# �� 
TargetName 
 TextDropShadow$ �� ScaleX% �� ScaleY�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      ZMahApps_Metro_Converters=clr-namespace:MahApps.Metro.Converters;assembly=MahApps.Metro  69   8d2http://schemas.microsoft.com/expression/blend/2008  6�   Bmc;http://schemas.openxmlformats.org/markup-compatibility/2006  6�   )c!http://stylist.codinator.net/2010  6  ?ee4http://schemas.microsoft.com/expression/2010/effects   6H  Bei9http://schemas.microsoft.com/expression/2010/interactions  6�  %u  &	        &	 0    7  7  &		 s    �� 5      "  ��6#   .�5      ��  � ��$ 25��6    �� 5       � ��$
 Bold"�6!   �� 5       � ��$ 10(�6   �� 5       � ��# �  6!   �� 5	       � ��# �  6!   �� 5
       � ��# �  6"   �� 5       � ��# �  6!   �� 5       � ��$	 5,6q�6   �� 5       � ��$ 1q�6&   �� 5       � �� 5      �� 5      " ��6   .R�5      �  5        5   	   CommonStates��. 5   
     
Normal��6     5   
   	MouseOver��. 5      �� .��5      U� $ (UIElement.Opacity)�6*   $ MouseOverBorder��6Z   .\�5        $	 0��6"   $
 1Q�6.   5      5      5        5   
   Pressed��6     5   
   Disabled��6   5   
     5   	   FocusStates��. 5    
     Focused��6     5!   
   	Unfocused��6   5"   
   .+�5$      �� $ MouseOverBorder��6   #��z��6(   $ 20��6\   $ 0Q�6n   #��� ��6z   �� 5%      $'��!/Apollo;component/Icons/NetOn.png��6   $
��Fill=�69   5&      5'      5)      5*      �� 5+      "  ��6"   .�5,      ��  � ��$ 25��6    �� 5-       � ��$
 Bold"�6!   �� 5.       � ��$ 10(�6   �� 5/       � ��# �  6!   �� 50       � ��# �  6!   �� 51       � ��# �  6"   �� 52       � ��# �  6!   �� 53       � ��$	 5,6q�6   �� 54       � ��$ 1q�6&   �� 55       � �� 56      �� 57      " ��6    58      ���� 59      Storyboard1 .��5:   	   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6'   $ image��6�   .\�5;   
     $	 0:0:1��6   $	
 180Q�6/    5<        5=      $ 	EaseInOut=�6   5?      5@   
   5A   	   �� 5B      Storyboard2 .��5C   	   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6'   $ image��6�   .\�5D   
     $	 0:0:1��6   $
 0Q�6/   5E   
   5F   	   5G      .R�5H      �  5I        5J   	   CommonStates��. 5K   
     
Normal��6     5L   
   	MouseOver��. 5M      �� .��5N      U� $ (UIElement.Opacity)�6*   $ MouseOverBorder��6Z   .\�5O        $	 0��6"   $
 1Q�6.   5P      5Q      5R        5S   
   Pressed��6     5T   
   Disabled��6   5U   
     5V   	   FocusStates��. 5W   
     Focused��6     5X   
   	Unfocused��6   5Y   
   .+�5[      �� $ MouseOverBorder��6   #��z��6(   $ 0��6\   $ 0Q�6m   ._�5\   	     $	 0.5Q�6   . 5]   
     $	 2,0q�6    5^      �� 5_      .��5`      � $ 	#7F3399FF��6   $	 0.5Q�6,   � 5a      $ 	#00000000��6   $ 1Q�6,   � 5b      $ 	#00000000��6   5c       5e      �� 5f      .��5g      � $ 	#7F3399FF��6   $	 0.5Q�6,   � 5h      $ 	#00000000��6   $ 1Q�6,   � 5i      $ 	#00000000��6   5j      5l      5m   
   5n   	   �� 5o      $ image��6   $(��"/Apollo;component/Icons/Reload.png��6   $
��Fill=�6I   $ 0.5,0.5&�6X   $	��5,3q�6x   z�5p   	   V� 5q   
   .~�5r      �� �� 5s      �� 5t      T� 5u      5v      5x   	   5y       5z      P� 5{      $ image��64    �@J�IsMouseOver .  5|   	   �� 5}   
   $! Storyboard2_BeginStoryboard��6   8��  6?    5   	   �� 5�   
   8�� 6   5�   	   5�      5�      5�      �� 5�      "  ��6(   .�5�      ��  � ��$ 25��6    �� 5�       � ��$
 Bold"�6!   �� 5�       � ��$ 10(�6   �� 5�       � ��# �  6!   �� 5�       � ��# �  6!   �� 5�       � ��# �  6"   �� 5�       � ��# �  6!   �� 5�       � ��$	 5,6q�6   �� 5�       � ��$ 1q�6&   �� 5�       � �� 5�      �� 5�      " ��6   .R�5�      �  5�        5�   	   CommonStates��. 5�   
     
Normal��6     5�   
   	MouseOver��6     5�   
   Pressed��6     5�   
   Disabled��. 5�      �� .��5�      U� $ (UIElement.Opacity)�6*   $ contentPresenter��6Z   .\�5�        $	 0��6"   $	
 0.3Q�6.   5�      5�      5�      5�   
     5�   	   FocusStates��. 5�   
     Focused��6     5�   
   	Unfocused��6   5�   
     5�        5�   	   .+�5�        $! stylist��6   $	 0.5Q�6#   $��Stretch=�61   $��0q�6O   $
��Auto��6Z   $y�Visible=�6g   $ 0.5,0.5&�6|   z�5�   	   V� 5�   
   .~�5�      �� �� 5�      �� 5�      T� 5�      5�      . 5�   	     $	 2,0q�6    5�   
   �� 5�      .��5�      � $ 	#7F3399FF��6   $	 0.5Q�6+   � 5�      $ 	#00000000��6   $ 1Q�6+   � 5�      $ 	#00000000��6   5�       5�   
   �� 5�      .��5�      � $ 	#7F3399FF��6   $	 0.5Q�6+   � 5�      $ 	#00000000��6   $ 1Q�6+   � 5�      $ 	#00000000��6   5�      5�   
   5�   	   �� 5�      $" contentPresenter��6   #��z��63   #��z��6g   #��z��6�   $ 0.5,0.5&�6�   $	��8,0q�6	  z�5�   	   V� 5�   
   .~�5�      �� �� 5�      �� 5�      T� 5�      5�      5�   	   5�       5�      P� 5�       �@J�IsMouseOver . . �5�   	   �� $# contentPresenter��6"   # � 
 6@    �@J�Effect�� 5�   	   $# contentPresenter��6+    � z� 5�   
   V� 5�      .~�5�      �� $	$ 1.1Q�6   $	% 1.1Q�6(   �� 5�      �� 5�      T� 5�      5�      5�   
   �� 5�   	   $# stylist��6+    � z� 5�   
   V� 5�      .~�5�      �� $	$ 1.1Q�6   $	% 1.1Q�6(   �� 5�      �� 5�      T� 5�      5�      5�   
   5�   	   5�      5�      5�      5�      