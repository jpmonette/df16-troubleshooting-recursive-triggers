<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_to_Large_Size</fullName>
        <description>Set Company Size to Large</description>
        <field>Company_Size__c</field>
        <literalValue>Large</literalValue>
        <name>Set to Large Size</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_to_Medium_Size</fullName>
        <description>Set Company Size to Medium</description>
        <field>Company_Size__c</field>
        <literalValue>Medium</literalValue>
        <name>Set to Medium Size</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_to_Small_Size</fullName>
        <description>Set Company Size to Small</description>
        <field>Company_Size__c</field>
        <literalValue>Small</literalValue>
        <name>Set to Small Size</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Number of Employees is Large</fullName>
        <actions>
            <name>Set_to_Large_Size</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If Number of Employees is over 249</description>
        <formula>NumberOfEmployees &gt;= 250</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Number of Employees is Medium</fullName>
        <actions>
            <name>Set_to_Medium_Size</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If Number of Employees is between 50 and 249</description>
        <formula>NumberOfEmployees &gt;= 50 &amp;&amp; NumberOfEmployees &lt; 250</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Number of Employees is Small</fullName>
        <actions>
            <name>Set_to_Small_Size</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If Number of Employees is less than 50</description>
        <formula>NumberOfEmployees &lt; 50</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
