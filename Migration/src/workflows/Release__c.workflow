<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Release_is_ready_to_go</fullName>
        <description>Release is ready to go</description>
        <protected>false</protected>
        <recipients>
            <recipient>integration@00d6a000000ui6wuaa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Ready_to_deploy</fullName>
        <field>Ready_to_deploy__c</field>
        <literalValue>1</literalValue>
        <name>Ready to deploy</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>General Release Update</fullName>
        <actions>
            <name>Release_is_ready_to_go</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Ready_to_deploy</name>
            <type>FieldUpdate</type>
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
