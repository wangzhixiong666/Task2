<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>
<json:object>
<json:array name="studentList" var="student" items="${studentList}">
    <json:object>
        <json:property name="name" value="${student.name}"/>
        <json:property name="qq" value="${student.qq}"/>
        <json:property name="school" value="${student.school}"/>
    </json:object>
</json:array>
</json:object>

