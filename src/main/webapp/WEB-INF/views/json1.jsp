<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>
<json:array name="studentList" items="${studentList}" var="student">
    <json:object>
        <json:property name="name" value="${student.name}"/>
        <json:property name="id" value="${student.id}"/>
        <json:property name="qq" value="${student.qq}"/>
    </json:object>
</json:array>

