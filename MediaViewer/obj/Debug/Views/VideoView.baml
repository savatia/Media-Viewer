   M S B A M L   `   `   `  ����F  BMediaViewer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:MediaViewer.ViewsMediaViewer.Views  5      C&clr-namespace:MediaViewer.UserControlsMediaViewer.UserControls  5	      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel 5
      !    MediaViewer.Views.VideoView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:MediaViewer.Views     5      5uc&clr-namespace:MediaViewer.UserControls     5	      Gcm8clr-namespace:System.ComponentModel;assembly=WindowsBase     5
        � 	Resources  5         movieSource �� Source �� SortDescriptions+  %System.ComponentModel.SortDescription   PropertyName��%d   &	        �� 5   
    63   �� *Media+ 5        5      $
 Name��6%   5      5      .��5      ]� .+�5   
   9� $
��Left=�6    9� ExpandDirection$ Right=�6)    9� 
IsExpanded . $��0 1 1 1q�6S   
�������$��0 2 0 0q�6�   $��2q�6�   ��5      �� 5      $��Movies��6   $��14(�6*   $
��Bold"�68    � LayoutTransform 5      �� 5       �� Angle$ 90Q�6*   5      .��5      �� -   5         ��Name$ 	movieList��5      $	��175��6)   $��0q�65   	 �� DisplayMemberPath$
	 Name��6�   ��6I   �� 
 �� Source#
 [  6�   5      *   $MediaViewer.UserControls.MediaPlayer  5   
   $��4q�6T      Media 6   ��  �� ElementName$ 	movieList�� �� Path$ SelectedItem�6T   5      5      