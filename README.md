# Oracle APEX Dashboard Cards Plugin
Create nice cards with this template component plugin

## Installation ##
Import *template_component_plugin_com_rodrigomesquita_dashboard_cards.sql.sql* file into your application.

## Usage ##
1. Create a page item
2. Choose *Dashboard Cards [Plugin]* as an template component type

## Sample Query ##
```
SELECT 1 id_pk,
        'Members' as title,
        '985' as card_value,
        '50% INCREASE' as footer_text,
        '#40af73' as background_color,
        'fa-users' as card_icon,
        '#ffffff' as font_color
 FROM DUAL
union
 SELECT 2 id_pk,
       'Account' as title,
       '$365.00' as card_value,
       '20% INCREASE' as footer_text,
       '#317ac1' as background_color,
       'fa-dolar' as card_icon,
       '#ffffff' as font_color
 FROM DUAL
 union
 SELECT 3 id_pk,
        'System Alerts' as title,
       '5' as card_value,
       '' as footer_text,
       '#d83f3f' as background_color,
       'fa-bell' as card_icon,
       '#ffffff' as font_color
 FROM DUAL
   union
 SELECT 4 id_pk, 
       'Tasks' as title,
       '150' as card_value,
       'In Progress' as footer_text,
       '#c78e27' as background_color,
       'fa-tasks' as card_icon,
       '#ffffff' as font_color
 FROM DUAL 
    union
 SELECT 5 id_pk, 
       'Cart' as title,
       '$152.00' as card_value,
       '' as footer_text,
       '#c78e27' as background_color,
       'fa-shopping-cart' as card_icon,
       '#ffffff' as font_color
 FROM DUAL 
```
 ![Preview](configuration.jpg)

## Preview ##
![Preview](plugin_preview.jpg)

## Demo ##
https://bit.ly/dashboard-cards

