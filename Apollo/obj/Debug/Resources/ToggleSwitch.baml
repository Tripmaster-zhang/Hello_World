   M S B A M L   `   `   `  ����S  OToggleSwitch, Version=1.1.0.0, Culture=neutral, PublicKeyToken=8637099990568f75Q8clr-namespace:ToggleSwitch.Borders;assembly=ToggleSwitchToggleSwitch.Borders  5      A0clr-namespace:ToggleSwitch;assembly=ToggleSwitchToggleSwitch  5      M6clr-namespace:ToggleSwitch.Utils;assembly=ToggleSwitchToggleSwitch.Utils  5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   RestartThumbTemplate  �� 
TargetType'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration	 W� To �� TargetProperty �� 
TargetName g� RepeatBehavior	 g� 	BeginTime9  3System.Windows.Media.Animation.EasingDoubleKeyFrame
 O� KeyTime O� Value R� KeyTime R� Value  System.Windows.Visibility*   $ToggleSwitch.Borders.OuterGlowBorder   OuterGlowSize   OuterGlowOpacity   OuterGlowColor   CornerRadius   ShadowCornerRadius)   #ToggleSwitch.Borders.ClippingBorder  Name   CornerRadius �� CornerRadius F�Name �� Stretch ��Name J� RenderTransformOrigin � MappingMode �� 
StartPoint �� EndPoint �� 	Transform u� Matrix � Offset  � Color! J� Opacity" ��Name# J� IsHitTestVisible$ �� RadiusY% �� RadiusX  iPhoneToggleSwitchStyle& �� 
TargetType)   #ToggleSwitch.HorizontalToggleSwitch' �� Property( �� Value#   ToggleSwitch.ToggleSwitchBase  SimpleThumbTemplate�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      DBorders8clr-namespace:ToggleSwitch.Borders;assembly=ToggleSwitch  5      AToggleSwitch0clr-namespace:ToggleSwitch;assembly=ToggleSwitch  5      @Utils6clr-namespace:ToggleSwitch.Utils;assembly=ToggleSwitch  5      %�  &	        &	 (    &	 _    �� 5      "  n�60   .R�5	   
   � 
������  5
        5      CommonStates��. 5        
Normal��6"     5      	MouseOver��. 5      �� .��5      W� $ 0D�6.   $
 0.05X�6;   $ Opacity�6E   $ BackgroundAnimation��6i   5      5        5      Pressed��. 5      �� .��5      W� $ 0D�6.   $
 0.25X�6;   $ Opacity�6E   $ BackgroundAnimation��6i   5      5        5      Disabled��. 5      �� .��5      W� $ 0D�6.   $	 .55X�6;   $ Opacity�6D   $ DisabledVisualElement��6h   5      5      5        5      FocusStates��. 5        Focused��. 5      �� .��5       W� $ 0D�6.   $
 0.05X�6;   $ Opacity�6E   $ FocusVisualElement��6i   5!      5"        5#      	Unfocused��6"   5$        5%      CheckStates��. 5&        	Unchecked��6"     5'      Checked��. 5(      �� $ Forever��6%   .��5)      U� $	 0X�6<   $ LoadingGrid��6J   $9 3(UIElement.RenderTransform).(RotateTransform.Angle)�6n   .\�5*   "     $
 0��67   $ 0Q�6C     5+   "   $
 00:00:01��67   $	 359Q�6J   5,      T� 5-      $ (UIElement.Visibility)�6<   $ LoadingGrid��6o   ..�5.   "   i� $ 0��69    5/   &    50   *   Visible=�6>   52   #   53      T� 54      $ (UIElement.Visibility)�6<   $
 path��6o   ..�55   "   i� $ 0��69    56   &    57   *   	Collapsed=�6@   59   #   5:      5;      5<      5=      .+�5?        $ 4Q�6&   $
 0.15Q�68   $��0q�6P   $ Black��6d   
������ $ 4��6�   $ 8��6�   ��.  .��5@      � .+�5A        $ 
Background��6-   #��z��6A   #��z��6m   $ 4��6�   ��.  
�������.��5B      �� ���	#FFEBEBEB$ 3��69   #��z��6J   #��z��6t   ._�5C      � .+�5D   "   F� $
 path��6'   F������6 @�' р�� @�' р�� @�d р�6 @�d ����     ���� �0F р�� �n� 	���	#AA767676$
 Fill=�6�   $��0��6�   $	��5,4q�6�   �� 5E   "   $ LoadingGrid��6-   $ 0.5,0.5&�6B   $��Center=�6b   $��Center=�6   $y�	Collapsed=�6�   z�5F   &   �� 5G   *   .+�5I   &   F� �������� ��- Ӏ�[ ��- ��- ��[ ��- ��� �    ��� �     �D  �D ��� ����      -1 �D  -1��� �@f��� �@f��[ ��� ��- ��� ��- $��9��6�   $��18��6�   $��Center=�6�   $
 Fill=�6�   ��5J   *   �� 5K   .   $ Absolute=�6B   $ 400,240.414&�6Y   $ 420,240.414&�6r    5L   2   u� 5M   6   $ -1,0,0,-1,420,245x�6F   .��5O   2   � $
 0.25Q�6?   $  	#FF7F7F7F��6M   � 5P   2   $ 1Q�6?   $  	#FF3F3F3F��6J   5Q   /   5S   '   F� 5T   &   �����@f    �@f    @f@f�@f 	= ��� ��j ��� ��j Ӏ�[ ��j ��-  	= ��- ���-     ��- ��- �        �        �    @KL @KL ��� ��� ��� ���� ���  -1@KL  -1� -1     -1 -1�@f    $��9��6�   $��18��6�   $��Center=�6�   $
 Fill=�6�   ��5U   *   �� 5V   .   $ Absolute=�6B   $ 489.5,230.5&�6Y   $ 509.5,230.5&�6r    5W   2   u� 5X   6   $ 1,0,-0,-1,-489.5,245x�6F   .��5Z   2   � $ 0Q�6?   $  White��6J   � 5[   2   $
 0.75Q�6?   $  	#FF7F7F7F��6M   5\   /   5^   '   5_   #   5`      5a      5b        5c      $ BackgroundAnimation��6-   
���   �$! 0Q�6]   #��z��6i   
���   �$ 4��6�   ��.  6�   �� 5d      $" DisabledVisualElement��6    
�������# .  $! 0Q�6e   $$ 4��6q   $% 4��6}   �� 5e      $" FocusVisualElement��6    # .  $��1q�6U   $! 0Q�6`   $$ 4��6l   $% 4��6x   $��1��6�   5f      5g      5h      5i      �� 5j      "&  6)   .�5k   
   �� ' � ��( �	#AFBEBEBE6(   �� 5l   
   ' �@ UncheckedForeground( �	#FF5C5C5C60   �� 5m   
   ' �@ CheckedForeground
( �����6.   �� 5n   
   ' �@ CheckedBackground( 5o      �� 5p      $ 0.5,1&�6&   $ 0.5,0&�67   .��5q      � $  	#FF81B5FB��6#   $ 1Q�65   � 5r      $  	#FF5D9FF2��6#   $
 0.50Q�65   � 5s      $  	#FF569BEF��6#   $
 0.50Q�65   � 5t      $  	#FF3772B9��6#   5u      5w      �� 5x   
   ' �@ UncheckedBackground( 5y      �� 5z      $ 0.5,1&�6&   $ 0.5,0&�67   .��5{      � $  	#FFBBBBBB��6#   $ 0Q�65   � 5|      $  	#FFE1E2E2��6#   $	 0.5Q�65   � 5}      $  	#FFDDDDDD��6#   $	 0.5Q�65   � 5~      $  White��6#   $ 1Q�61   5      5�      5�      �� 5�      "  n�62   .R�5�   
   � 
������  5�        5�      CommonStates��. 5�        
Normal��6"     5�      	MouseOver��. 5�      �� .��5�      W� $ 0D�6.   $
 0.05X�6;   $ Opacity�6E   $ BackgroundAnimation��6i   5�      5�        5�      Pressed��. 5�      �� .��5�      W� $ 0D�6.   $
 0.25X�6;   $ Opacity�6E   $ BackgroundAnimation��6i   5�      5�        5�      Disabled��. 5�      �� .��5�      W� $ 0D�6.   $	 .55X�6;   $ Opacity�6D   $ DisabledVisualElement��6h   5�      5�      5�        5�      FocusStates��. 5�        Focused��. 5�      �� .��5�      W� $ 0D�6.   $
 0.05X�6;   $ Opacity�6E   $ FocusVisualElement��6i   5�      5�        5�      	Unfocused��6"   5�        5�      CheckStates��. 5�        	Unchecked��6"     5�      Checked��6"   5�      .+�5�        $ 4Q�6&   $
 0.15Q�68   $��0q�6P   $ Black��6d   
������ $ 4��6�   $ 8��6�   ��.  .��5�      � .+�5�        $ 
Background��6-   #��z��6A   #��z��6m   $ 4��6�   ��.  #��z��6�     5�      $ BackgroundAnimation��6-   
���   �$! 0Q�6]   #��z��6i   
���   �$ 4��6�   ��.  6�   �� 5�      $" DisabledVisualElement��6    
�������# .  $! 0Q�6e   $$ 4��6q   $% 4��6}   �� 5�      $" FocusVisualElement��6    # .  $��1q�6U   $! 0Q�6`   $$ 4��6l   $% 4��6x   $��1��6�   5�      5�      5�      5�      5�      