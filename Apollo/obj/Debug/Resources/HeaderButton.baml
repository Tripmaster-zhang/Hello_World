   M S B A M L   `   `   `  ����W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ChromeButtonControlTemplate  �� 
TargetType ��Name J� SnapsToDevicePixels ��Name �� ContentStringFormat �� ContentStringFormat J� RenderTransformOrigin �� Triggers P� Property	 P� Value
 �� 
TargetName �� Property �� Value �� ScaleX �� ScaleY  ChromeButtonStyle �� 
TargetType �� 	Resources  Key �� TargetProperty �� 
TargetName9    3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value �� Triggers :� RoutedEvent ��Name  OnMouseDownStoryboard  OnMouseUpStoryboard�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml      5      %y  &	        &	 D    7   7  7  �� 5      "  ��5      .R�5   
   �� $ Chrome��5	      #��z��5
      $��0q�5      #��z��5       . ._�5      �� $ contentPresenter��6   #��z��5      #��z��5      # z 5      #��z��5      #��z��5      ��. # z 5      #��z��5      $ 0.5,1&�6X   z�5      V� 5      .~�5      �� �� 5      �� 5      T� 5      5      5      5        5!   
   P� 5"       �@J�IsMouseOver	 . . �5#   	   �� $
 contentPresenter��6+    � z� 5$   
   V� 5%      .~�5&      �� $	 1.2Q�6   $	 1.2Q�6(   �� 5'      �� 5(      T� 5)      5*      5,   
   5-   	   P� 5.       � {�	 .  . �51   	   ��  � �� �	#FFADADAD53   	   �� 54   	   $
 Chrome��56   	    �@J�Opacity$	 0.5Q�57   	   58   	   5:      �� 5;      " ��5=       5>   
   ���� 5?      OnMouseDownStoryboard .��5A      U� $ (UIElement.Opacity)�5B       5C      Z� .\�5D         $ 0��5E   !   $	 0.5Q�5F   !   5G      5H      �� 5I      OnMouseUpStoryboard .��5K      U� $ (UIElement.Opacity)�5L       5M      Z� .\�5N         $ 0��5O   !   $ 1Q�5P   !   5Q      5R      5S      .�5T   
   ��  � �� �	#000000005V      �� 5W   
    � �� 5Y      Z� �� 5Z   
    � ��$ 0q�5\      �� 5]   
    � ��$ 0q�5_      �� 5`   
    �@�Cursor$
 Hand��5b      �� 5c   
    � ��8   5e       5f   
   P� 5g       � {�	 .  . �5j      ��  �@J�Opacity$	 0.5Q�5l      5m      :� 5n      $ Mouse.PreviewMouseDown��5o      .[�5p      �� $! OnMouseDown_BeginStoryboard��5q      8�� 5r      5s      :� 5t      $ Mouse.PreviewMouseUp��5u      .[�5v      �� $ OnMouseUp_BeginStoryboard��5w      8�� 5x      5y      5{      5|      