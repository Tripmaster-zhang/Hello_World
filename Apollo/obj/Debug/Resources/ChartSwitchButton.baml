   M S B A M L   `   `   `  ����H  DMahApps.Metro, Version=1.1.0.0, Culture=neutral, PublicKeyToken=nullZ=clr-namespace:MahApps.Metro.Converters;assembly=MahApps.MetroMahApps.Metro.Converters  5   9   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ChartSwitchButtonStyle  �� 
TargetType �� Property �� Value  DefaultFont  
GrayBrush7  TextBoxBorderBrush  	TextBrush �� 
TargetType'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame	 O� KeyTime
 O� Value ��Name �� CornerRadius J� Opacity 
� GradientOrigin 
� RadiusY 
� Center �� Opacity 
� RadiusX � Color � Offset J� Effect-  'System.Windows.Media.Effects.BlurEffect   Radius   RenderingBias   
KernelType ��Name �� Property�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      ZMahApps_Metro_Converters=clr-namespace:MahApps.Metro.Converters;assembly=MahApps.Metro  69   %�  &	        �� 5      "  ��6(   .�5      ��  � ��$ 25��6    �� 5       � ��$
 Bold"�6!   �� 5       � ��$ 10(�6   �� 5	       � ��# �  6!   �� 5
       � ��# �  6!   �� 5       � ��# �  6"   �� 5       � ��# �  6!   �� 5       � ��$	 5,6q�6   �� 5       � ��$ 1q�6&   �� 5       � �� 5      �� 5      " ��6   .R�5      �  5        5   	   CommonStates��. 5   
     
Normal��6     5   
   	MouseOver��. 5      �� .��5      U� $ (UIElement.Opacity)�6*   $ MouseOverBorder��6Z   .\�5        $	 0��6"   $
 1Q�6.   5      5      5        5   
   Pressed��6     5   
   Disabled��. 5      �� .��5       U� $ (UIElement.Opacity)�6*   $ contentPresenter��6Z   .\�5!        $	 0��6"   $	
 0.3Q�6.   5"      5#      5$      5%   
     5&   	   FocusStates��. 5'   
     Focused��6     5(   
   	Unfocused��6   5)   
   .+�5+      �� $ MouseOverBorder��6   $ 4��6(   $ 0Q�69   $��Bottom=�6E   $��18��6`   ��5,   	   
� 5-   
   $ 0.5,1&�6   $	 1.2Q�65   $ 0.5,0&�6C   $	 0.8Q�6R   $	 0.7Q�6`   .��5.      � $ 	#FF3399FF��6   � 5/      $ White��6   $ 1Q�6&   50       52   	     53   
   $ 10Q�6   $ Quality=�6!   $ Gaussian=�69   55   	   �� 56      $ contentPresenter��6   #��z��63   #��z��6g   #��z��6�   #��z��6�   ��57   	   �� 58   
    � ��5<      5>   	   �� 5?      $,��&/Apollo;component/Icons/Navigation.png��6   $
��Fill=�6>   $��30��6M   $��0q�6X   $��30��6c   $	��Top=�6o   5@      5A      5C      5D      5E      