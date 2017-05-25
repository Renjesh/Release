<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Ready_to_deploy</fullName>
        <field>Ready_to_deploy__c</field>
        <literalValue>1</literalValue>
        <name>Ready to deploy</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Release_Ready</fullName>
        <apiVersion>39.0</apiVersion>
        <endpointUrl>http://test</endpointUrl>
        <fields>Id</fields>
        <fields>Name</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>renjeshraju@gmail.com.sales</integrationUser>
        <name>Release Ready</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>General Release Update</fullName>
        <actions>
            <name>Ready_to_deploy</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Release_Ready</name>
            <type>OutboundMessage</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Release__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
