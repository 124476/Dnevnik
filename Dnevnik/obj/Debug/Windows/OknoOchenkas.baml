   M S B A M L   `   `   `  ����B  >Dnevnik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Dnevnik.WindowsDnevnik.Windows  5   	   "    Dnevnik.Windows.OknoOchenkas   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Dnevnik.Windows     5   	     � Title$  Оценки��5   	   $	��450��6   $	��800��6%   $	��450��61   $	��800��6A   .��5	      �  � ColumnDefinitions 5
   
   �� 5      6!   �� 5      $
��auto �6   6.   .+�5   
   �� -   5         ��Name$ ListOchenkas��5      $��17(�6)   $��10q�67   ��5      �� 5      .R�5      �� .+�5      �� ��6$   �� *Name+6<   �� 5      ��6$   �� *Ochenka.Name+6D   �� 5      $��13(�6U   ��6$   �� *Date+ �� StringFormat$ 
dd/MM/yyyy��6e   �� 5       �� Orientation$ 
Horizontal=�6%   .+�5      �� $��Redact��6X   -   5        $��Изменить��5   (   
����  �$��15(�6J   6�   �� 5      $	��Del��6V   -   5        $��Удалить��5   (   
���  ��$��15(�6H   $
��10,0q�6w   6�   5      5      5      5      �� 5   
   $��1��6   $��Center=�6%   $��Center=�6B   $	��200��6]   $��10q�6i   .+�5      �� $��Название��6   $��17(�6(   68   �� 5      $��17(�6,   ��6   �� *Name+6=   �� 5       $��Оценка��6   $��17(�6&   66   �� 5!      -   5        $��ComboOchenks��5!      $��17(�6+    �� DisplayMemberPath$
 Name��69    �� SelectedItem 6R   �� *	Ochenka+6u   �� 5"      -   5        $��
RedactText��5"   M   $��*новая оценка��6   $��13(�6-   
�������6a   �� 5#      -   5         ��Name$ SaveBtn��5#      $��Сохранить��6&      StandartButton#��[  6P   $	��0,5q�6x   6�   �� 5$      -   5        $ StopBtn��5$      $��Отмена��6&   #��[  6N   6x   5%      5&      5'      