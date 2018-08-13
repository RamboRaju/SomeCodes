<aura:component implements="flexipage:availableForRecordHome,force:hasRecordId,force:appHostable,flexipage:availableForAllPageTypes,force:lightningQuickAction" access="global" controller="MarkCompleteContrl">
	<aura:attribute name="recordId" type="Id"/> 
    <aura:registerEvent name="refreshView" type="force:refreshView"/>
    <aura:registerEvent name="closeQuickAction" type="force:closeQuickAction"/>
    <aura:attribute name="isOpen" type="boolean" default="false"/>
    <lightning:button label="Information" variant="brand" onclick="{!c.onCheck}">Mark Complete</lightning:button>
</aura:component>