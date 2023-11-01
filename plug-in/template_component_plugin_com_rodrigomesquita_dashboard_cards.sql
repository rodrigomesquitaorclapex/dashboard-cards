prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0-17'
,p_default_workspace_id=>41755996400255984956
,p_default_application_id=>166595
,p_default_id_offset=>0
,p_default_owner=>'RM_SANDBOX'
);
end;
/
 
prompt APPLICATION 166595 - Dashboard Cards
--
-- Application Export:
--   Application:     166595
--   Name:            Dashboard Cards
--   Date and Time:   13:18 Wednesday November 1, 2023
--   Exported By:     RODRIGOMESQUITA.TI@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 7289874097751923263
--   Manifest End
--   Version:         23.2.0-17
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/com_rodrigomesquita_dashboard_cards
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(7289874097751923263)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'COM.RODRIGOMESQUITA.DASHBOARD_CARDS'
,p_display_name=>'Dashboard Cards'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_css_file_urls=>'#PLUGIN_FILES#dashboard_cards#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div><span aria-hidden="true" class="fa fa-refresh fa-2x fa-anim-spin"></span></div>',
'{else/}',
'',
'    <div class="dc-card" style="background:#CARD_COLOR#; opacity: 0.8; color:#CARD_FONT_COLOR#;">',
'        {if CARD_ICON/} ',
'           <div class="dc-icon"><span style="color:#CARD_COLOR#;" class="fa #CARD_ICON# fa-4x" aria-hidden="true"></span></div>',
'        {endif/}',
'        <div class="dc-title">#TITLE#</div>',
'        <div class="dc-body">#CARD_BODY#</div>',
'            <div class="dc-footer">',
'            {if FOOTER_TEXT/} ',
'               #FOOTER_TEXT#   ',
'            {endif/}  ',
'            </div>',
'        {if APEX$HAS_ACTION_BUTTONS/}',
'            <div class="dc-userActions">',
'                #ACTION_BUTTON#',
'            </div>    ',
'        {endif/}',
'    </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>'<div class="dc-card-container">#APEX$ROWS#</div>'
,p_report_row_template=>'<span #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</span>'
,p_report_placeholder_count=>1
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  Oracle APEX Template Component Plugin <STRONG>Dashboard Cards<STRONG>',
'</p>',
'<p>',
'  Author: <code>Rodrigo Mesquita</code><br/>',
'  E-mail: <code>rodrigomesquita.ti@gmail.com</code><br/>',
'  X: <code>@mesquitarod</code><br/>',
'  Plugin home page: <code>https://github.com/rodrigomesquitaorclapex/dashboard-cards</code>',
'  License: Licensed under the MIT (LICENSE.txt) license.',
'</p>'))
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/rodrigomesquitaorclapex/dashboard-cards'
,p_files_version=>95
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(7290859570625006673)
,p_plugin_id=>wwv_flow_imp.id(7289874097751923263)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(7290873692297009836)
,p_plugin_id=>wwv_flow_imp.id(7289874097751923263)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'CARD_BODY'
,p_prompt=>'Body'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(7291389771023258980)
,p_plugin_id=>wwv_flow_imp.id(7289874097751923263)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'FOOTER_TEXT'
,p_prompt=>'Footer Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(7411132506338836921)
,p_plugin_id=>wwv_flow_imp.id(7289874097751923263)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'CARD_ICON'
,p_prompt=>'Card Icon'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(7456546531017795080)
,p_plugin_id=>wwv_flow_imp.id(7289874097751923263)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'CARD_FONT_COLOR'
,p_prompt=>'Font Color'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'#000000'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(7457102898422802984)
,p_plugin_id=>wwv_flow_imp.id(7289874097751923263)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'CARD_COLOR'
,p_prompt=>'Card Color'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'#ffffff'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(7418873030299195376)
,p_plugin_id=>wwv_flow_imp.id(7289874097751923263)
,p_name=>'ACTION_BUTTON'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="rw-Button{if IS_HOT/} is-hot{endif/} #CSS_CLASSES#" href="#LINK_URL#" {if ICON_CLASSES/}rw-Button--iconText{else/}rw-Button--text{endif/} title="#LABEL!ATTR#" #LINK_ATTR# {if IS_DISABLED/}disabled{endif/}>',
'  <span class="rw-Button-label">',
'    <span class="rw-Button-text">#LABEL#</span>',
'    <span class="rw-Button-icon #ICON_CLASSES#" aria-hidden="true"></span>',
'  </span>',
'</a>'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(7418902441444198258)
,p_plugin_id=>wwv_flow_imp.id(7289874097751923263)
,p_name=>'Action Button'
,p_static_id=>'ACTION_BUTTON'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
,p_template_id=>wwv_flow_imp.id(7418873030299195376)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '200A202E64632D636172642D636F6E7461696E6572207B0A2020202077696474683A20313030253B0A20202020666C65782D777261703A20777261703B0A20202020646973706C61793A20666C65783B0A20202020616C69676E2D6974656D733A206365';
wwv_flow_imp.g_varchar2_table(2) := '6E7465723B0A202020206A7573746966792D636F6E74656E743A20666C65782D73746172743B0A7D0A2E64632D636172642D636F6E7461696E6572203E207370616E7B0A20202020666C65783A20313B0A2020202070616464696E673A20313070783B0A';
wwv_flow_imp.g_varchar2_table(3) := '202020206D696E2D77696474683A2032353070783B0A7D0A0A2E64632D69636F6E207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020626F74746F6D3A203330253B0A2020202072696768743A2034253B0A7D0A0A2E64632D69';
wwv_flow_imp.g_varchar2_table(4) := '636F6E203E207370616E207B0A20202020666F6E742D7765696768743A20626F6C643B0A2020202066696C7465723A206272696768746E65737328302E38293B0A7D0A200A202E64632D636172642D636F6E7461696E65723A6265666F72652C202E6463';
wwv_flow_imp.g_varchar2_table(5) := '2D636172642D636F6E7461696E65723A6166746572207B0A0920636F6E74656E743A202220223B0A0920646973706C61793A207461626C653B0A7D0A2E64632D63617264207B0A2020202070616464696E673A20313070783B0A20202020706F73697469';
wwv_flow_imp.g_varchar2_table(6) := '6F6E3A2072656C61746976653B0A20202020636F6C6F723A20626C61636B3B0A20202020626F726465722D636F6C6F723A20766172282D2D612D63762D73746174652D626F726465722D636F6C6F722C766172282D2D612D63762D747970652D626F7264';
wwv_flow_imp.g_varchar2_table(7) := '65722D636F6C6F722C766172282D2D612D63762D626F726465722D636F6C6F722929293B0A20202020626F726465722D7261646975733A203570783B0A20202020626F726465722D7374796C653A20736F6C69643B0A20202020626F726465722D776964';
wwv_flow_imp.g_varchar2_table(8) := '74683A20766172282D2D612D63762D626F726465722D77696474682C317078293B0A20202020626F782D736861646F773A20766172282D2D612D63762D73746174652D736861646F772C766172282D2D612D63762D747970652D736861646F772C766172';
wwv_flow_imp.g_varchar2_table(9) := '282D2D612D63762D736861646F772C6E6F6E652929293B0A7D0A202E64632D666F6F746572207B0A20202020626F726465722D746F703A2031707820736F6C69643B0A20202020626F726465722D636F6C6F723A20766172282D2D612D63762D73746174';
wwv_flow_imp.g_varchar2_table(10) := '652D626F726465722D636F6C6F722C766172282D2D612D63762D747970652D626F726465722D636F6C6F722C766172282D2D612D63762D626F726465722D636F6C6F722929293B0A202020206D696E2D6865696768743A20323270783B0A207D0A0A202E';
wwv_flow_imp.g_varchar2_table(11) := '64632D63617264202E64632D666F6F746572207B0A0920666F6E742D73697A653A20313070783B0A09206D617267696E2D746F703A20323570783B0A092070616464696E673A2031307078203130707820303B0A0920746578742D7472616E73666F726D';
wwv_flow_imp.g_varchar2_table(12) := '3A207570706572636173653B0A2020202020666F6E742D7765696768743A20626F6C643B0A7D0A202E64632D63617264202E64632D7469746C65207B0A0920646973706C61793A20696E6C696E652D626C6F636B3B0A0920666F6E742D73697A653A2031';
wwv_flow_imp.g_varchar2_table(13) := '3270783B0A092070616464696E673A2031307078203130707820303B0A0920746578742D7472616E73666F726D3A207570706572636173653B0A7D0A202E64632D63617264202E64632D626F6479207B0A0920666F6E742D73697A653A20323870783B0A';
wwv_flow_imp.g_varchar2_table(14) := '092070616464696E673A203020313070783B0A20202020200A7D0A0A2E64632D75736572416374696F6E73207B0A2020202072696768743A20313270783B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020626F74746F6D3A2035';
wwv_flow_imp.g_varchar2_table(15) := '70783B0A7D0A0A612E72772D427574746F6E207B0A20202020636F6C6F723A20696E68657269743B0A7D0A0A7370616E2E72772D427574746F6E2D74657874207B0A20202020666F6E742D73697A653A20313270783B0A20202020746578742D7472616E';
wwv_flow_imp.g_varchar2_table(16) := '73666F726D3A207570706572636173653B0A20202020766572746963616C2D616C69676E3A20746578742D746F703B0A7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(7290698572730955797)
,p_plugin_id=>wwv_flow_imp.id(7289874097751923263)
,p_file_name=>'dashboard_cards.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E64632D636172642D636F6E7461696E65727B77696474683A313030253B666C65782D777261703A777261703B646973706C61793A666C65783B616C69676E2D6974656D733A63656E7465723B6A7573746966792D636F6E74656E743A666C65782D7374';
wwv_flow_imp.g_varchar2_table(2) := '6172747D2E64632D636172642D636F6E7461696E65723E7370616E7B666C65783A313B70616464696E673A313070783B6D696E2D77696474683A32353070787D2E64632D69636F6E7B706F736974696F6E3A6162736F6C7574653B626F74746F6D3A3330';
wwv_flow_imp.g_varchar2_table(3) := '253B72696768743A34257D2E64632D69636F6E3E7370616E7B666F6E742D7765696768743A3730303B66696C7465723A6272696768746E657373282E38297D2E64632D636172642D636F6E7461696E65723A61667465722C2E64632D636172642D636F6E';
wwv_flow_imp.g_varchar2_table(4) := '7461696E65723A6265666F72657B636F6E74656E743A2220223B646973706C61793A7461626C657D2E64632D636172642C2E64632D666F6F7465727B626F726465722D636F6C6F723A766172282D2D612D63762D73746174652D626F726465722D636F6C';
wwv_flow_imp.g_varchar2_table(5) := '6F722C766172282D2D612D63762D747970652D626F726465722D636F6C6F722C766172282D2D612D63762D626F726465722D636F6C6F722929297D2E64632D636172647B70616464696E673A313070783B706F736974696F6E3A72656C61746976653B63';
wwv_flow_imp.g_varchar2_table(6) := '6F6C6F723A233030303B626F726465722D7261646975733A3570783B626F726465722D7374796C653A736F6C69643B626F726465722D77696474683A766172282D2D612D63762D626F726465722D77696474682C317078293B626F782D736861646F773A';
wwv_flow_imp.g_varchar2_table(7) := '766172282D2D612D63762D73746174652D736861646F772C766172282D2D612D63762D747970652D736861646F772C766172282D2D612D63762D736861646F772C6E6F6E652929297D2E64632D666F6F7465727B626F726465722D746F703A3170782073';
wwv_flow_imp.g_varchar2_table(8) := '6F6C69643B6D696E2D6865696768743A323270787D2E64632D63617264202E64632D666F6F7465722C2E64632D63617264202E64632D7469746C657B70616464696E673A31307078203130707820303B746578742D7472616E73666F726D3A7570706572';
wwv_flow_imp.g_varchar2_table(9) := '636173657D2E64632D63617264202E64632D666F6F7465727B666F6E742D73697A653A313070783B6D617267696E2D746F703A323570783B666F6E742D7765696768743A3730307D2E64632D63617264202E64632D7469746C657B646973706C61793A69';
wwv_flow_imp.g_varchar2_table(10) := '6E6C696E652D626C6F636B3B666F6E742D73697A653A313270787D2E64632D63617264202E64632D626F64797B666F6E742D73697A653A323870783B70616464696E673A3020313070787D2E64632D75736572416374696F6E737B72696768743A313270';
wwv_flow_imp.g_varchar2_table(11) := '783B706F736974696F6E3A6162736F6C7574653B626F74746F6D3A3570787D612E72772D427574746F6E7B636F6C6F723A696E68657269747D7370616E2E72772D427574746F6E2D746578747B666F6E742D73697A653A313270783B746578742D747261';
wwv_flow_imp.g_varchar2_table(12) := '6E73666F726D3A7570706572636173653B766572746963616C2D616C69676E3A746578742D746F707D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(9403395111043531730)
,p_plugin_id=>wwv_flow_imp.id(7289874097751923263)
,p_file_name=>'dashboard_cards.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
