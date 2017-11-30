<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${basePath}/css/main.css">
<style type="text/css">
/* Custom Styles */
    ul.nav-tabs{
        width: 140px;
        margin-top: 20px;
        border-radius: 4px;
        border: 1px solid #ddd;
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
    }
    ul.nav-tabs li{
        margin: 0;
        border-top: 1px solid #ddd;
    }
    ul.nav-tabs li:first-child{
        border-top: none;
    }
    ul.nav-tabs li a{
        margin: 0;
        padding: 8px 16px;
        border-radius: 0;
    }
    ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover{
        color: #fff;
        background: #0088cc;
        border: 1px solid #0088cc;
    }
    ul.nav-tabs li:first-child a{
        border-radius: 4px 4px 0 0;
    }
    ul.nav-tabs li:last-child a{
        border-radius: 0 0 4px 4px;
    }
    ul.nav-tabs.affix{
        top: 30px; /* Set the top position of pinned element */
    }
</style>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
<div id="box">
<%@include file="/top.jsp" %>
<%@include file="/navigation3.jsp" %>
<div id="main" data-spy="scroll" data-target="#myScrollspy">
<div class="container">
   <div class="jumbotron">
        <h1>案例分析</h1>
    </div>
    <div class="row">
        <div class="col-xs-3" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
                <li class="active"><a href="teach_plan.jsp">授课教案</a></li>
                <li><a href=" ">教学视频</a></li>
                <li><a href="course_exercise.jsp">练习题</a></li>
                <li><a href="knowledge_index.jsp">知识点索引</a></li>
                <li><a href="examination_syllabus.jsp">考试大纲</a></li>
                <li><a href="#section-6">模拟试卷</a></li>
                <li><a href="case_analysis.jsp">案例分析</a></li>
            </ul>
        </div>
        <div class="col-xs-7" >
        <div>
<p ><strong>项目概况 </strong>   某实业公司拟建一度假村。   <br />
  选址在郊区，占地面积约10,000m2。 <br />
  主要包括各种休闲娱乐设施，住宿设施，并在周边道路布置绿地。 <br />
  各配套项目经向有关单位征询，可配套解决。     <br />
  项目总投资人民币9000万，建设周期三年。 <br />
  <strong> 项目开始阶段：  </strong>    <br />
  结合项目实际需要，并综合以前相关项目的开发成本，制作招标文件参与招标。&#160;&#160;&#160;&#160; <br />
  &#160;&#160;竞选完招标后与甲方制定合同草案，确定双方的权利和义务，放映到合同当中。制成最终合同草案，确定谈判日程和人员，审阅无误后签署文本。项目经理对任务书进行确认。&#160;&#160;&#160;&#160; <br />
  &#160;&#160;确定项目后，制定项目章程，确定项目经理和项目人员及开展工作的一般性描述。项目经理根据项目的具体情况选择合适的生存期模型。然后进入下一阶段： <br />
  项目计划阶段：&#160; <br />
  本项目管理方案是对项目设计阶段进行投资、质量、合同、信息、组织协调六方面的控制,以及甲供材料设备招标管理：&#160; <br />
  &#160;&#160;&#160;&#160;投资控制采用的基本工作原理是动态控制原理，即采用计算机辅助的手段，在项目设计的各个阶段，分析和审核投资计划值，并将不同阶段的投资计划值和实际值进行动态跟踪比较，当其发生偏差时，分析产生偏差的原因，提出纠偏的措施，使项目设计在确保项目质量的前提下，充分考虑项目的经济性，使项目总投资控制在计划总投资范围以内。主要任务是：&#160; </p>
<ol>
  <li>&#160;审核方案设计优化估算，并提出审核报告和建议；&#160; </li>
</ol>
<p >（2）&#160;审核设计概算，并提出审核报告和意见；&#160; <br />
  （3）&#160;在审核设计概算的基础上，确定项目总投资目标值；&#160; <br />
  （4）&#160;对施工图设计从设计、施工、材料和设备等多方面进行必要的市场调查分析和 <br />
  技术经济比较，并提出咨询报告，供业主参考；&#160; <br />
  （5）&#160;审核施工图预算，调整总投资计划，在充分考虑满足项目功能的条件下提出进 <br />
  一步挖掘节约投资的可能性；&#160; <br />
  <strong>质量控制</strong>：设计质量具有直接效用质量和间接效用质量双重属性。直接效用质量目标实 <br />
  质设计文件（包括图纸和说明书）应尽量满足的质量要求，其中最关键的是设计是否符合国内有关设计规范、是否满足业主的要求、各阶段设计是否达到国家有关部门规定的设计深度，以及设计是否具有施工和安装的可建造性。间接效用质量目标是指设计文件所体现的最终建筑产品质量，该项目的间接效用质量是指通过设计和施工的共同努力使项目建设成为造型新颖、功能齐全、布局合理、结构可靠、环境协调的具有国际一流水平的邮电通信大楼。为了有效的进行设计阶段质量控制，项目管理人员应在透彻了解业主给项要求的基础上，详细的阅读，分析图纸，一边发现并提出问题。对重要的细节问题和关键问题，如有必要建议组织中外专家论证。 <br />
  <strong>项目执行控制</strong>：&#160; <br />
  1.进度控制：设计进度如果控制不住，将直接影响到项目建设总进度目标的实现。为了缩短建设周期，项目管理人员应协助设计单位进行合理的安排，使设计进度计划为施工招标服务，并尽量使设计满足业主对开工日期的要求、同时兼顾采购周期较长的材料、设备供应时间的要求，同时应充分考虑到有关政府和市政部门对设计文件审批的时间要求。此外，对于由业主自身因素（如业主能否向设计方及时明确设计要求并提供设计所需的参数和条件、能否及时对设计文件进行决策和认可、能否尽量减少设计意图的改变和反复）造成对设计进度的影响，项目管理人员应协助业主尽早发现问题，并提出解决方案。主要任务是:&#160; <br />
  （6）&#160;审核设计方提出的详细的设计进度计划和出图计划,并控制其执行,尽可能避免 <br />
  发生因设计推迟而影响项目总进度计划及造成施工单位要求工期赔偿；&#160; <br />
  （7）&#160;助起草主要甲供材料和设备的采购计划,编制甲供进口材料设备清单,以便业主 <br />
  向有关部门办理进口手续；&#160; <br />
  （8）&#160;协助研究分析分包合同及招投标、施工进度，与设计方协商，使设计进度为招 <br />
  投标及施工服务，并作为进度目标值；&#160; </p>
<ol>
  <li>&#160;协助业主对设计文件尽快做出审定和决策，以免影响设计进度计划；&#160;（12）&#160;在设计过程中进行进度计划值和实际值的比较，并提交进度控制报告和建议；&#160;（13）&#160;协调各专业工种设计进度，使其能满足施工进度要求。 </li>
</ol>
<p ><strong>项目结束过程：</strong>&#160; <br />
  范围确认：项目接收前，重新审核工作成果，检验项目的各项工作范围是否完成，或者完成程度，最后，双方确认签字。&#160; <br />
  质量验收：&#160;依据质量计划和相关的质量标准进行验收。&#160; <br />
  产品交付：当所有工作成果都通过验收后，乙方向甲方提交最终产品 </p>
        </div>
    </div>
</div>
</div>
</div>
<%@include file="/bottom.jsp" %>
</div>
</html>