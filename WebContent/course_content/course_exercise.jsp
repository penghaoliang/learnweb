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
        <h1>练习题</h1>
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
<p > 1. 需求分析是回答系统必须（  A ）的问题   </p>
<ol>
  <li>做什么          B. 怎么做        C. 何时做       D. 为谁做   </li>
</ol>
<p > 2. WBS（工作分解结构）非常重要，因为下列原因，除了（B ）    </p>
<ol>
  <li>帮助组织工作  B. 防止遗漏工作  C. 为项目估算提供依据  D. 确定团队成员责任    3. 项目范围（C ） </li>
</ol>
<p >  A. 只在项目开始时重要   B. 在授权项目的合同或者其他文件得以批准后就不再重要了  C. 从项目概念阶段到收尾阶段都应该加以管理和控制  D. 是在项目执行阶段通过变更控制步骤进行处理的问题    <br />
  4. 为了有效地管理项目，应该将工作分解为更小的部分，以下各项中，哪一项不能说明任 务应该分解到什么程度？（ C）   </p>
<ol>
  <li>可以在80小时内完成           B. 不能再进一步进行逻辑细分了  C. 可由一个人完成                D. 可以进行实际估算    </li>
</ol>
<p > 5. 范围变更是指（ C）   A. 修改技术规格                    B. 对范围陈述进行修订  C. 对批准后的WBS进行修改           D. 以上都不是   <br />
  6. 下面哪个不是需求管理的过程（ A） <br />
  A. 需求设计        B. 需求获取          C. 需求分析          D. 需求变更      7. 下面那个不是创建WBS的方法（ C） <br />
  A. 自顶向下        B. 自底向上       C. 控制方法       D. 模版指导        8. 任8任务分解可以(  B  )，它是范围变更的一项重要输入   <br />
  A. 提供项目成本估算结果                  B. 提供项目范围基线     C. 规定项目采用的过程                     D. 提供项目的关键路径     </p>
<ol>
  <li>范围基线由（B ）组成 </li>
</ol>
<p > A. 项目章程、批准的详细的项目范围说明书和WBS  B. 批准的详细项目范围说明书、WBS和WBS字典  C. 项目章程、项目工作说明书和WBS  D. WBS    <br />
  10. 以下哪项是指对项目包括什么与不包括什么的定义与控制过程。（C ） <br />
  A. 项目章程      B. 投标书       C. 项目范围管理      D. 项目成本估算     11. （ A）反映了组织机构或客户对系统、产品高层次的目标需求，有管理人员或市场分人 员确定。 </p>
<ol>
  <li>项目章程      B. 投标书       C. 项目范围管理      D. 项目成本估算   </li>
</ol>
<p >   11. （ A）反映了组织机构或客户对系统、产品高层次的目标需求，有管理人员或市场分人 员确定。 <br />
  A. 业务需求       B. 质量需求        C. 范围定义      D. 功能需求    <br />
  12. （D ） 描述了用户通过使用本软件产品必须要完成的任务，一般是用户协助提供。 <br />
  A. 约束和假设     B. 非功能性需求      C. 功能需求     D. 用户需求     <br />
  13. （ A） 定义了开发人员必须实现的软件功能，使得用户通过使用此软件能完成他们的任 务，从而满足了业务需求。 <br />
  A. 功能需求       B. 系统需求       C. 质量特性       D. 业务需求       <br />
  14. （ C） 是对需求进行调查、收集、分析、评价、定义等所有活动。 <br />
  A. 需求获取       B. 需求管理       C. 需求开发       D. 需求工程        <br />
  15. 需求分析完成的标志是（D ）   <br />
  A. 开发出初步原型               B. 提交一份工作陈述      C. 提交项目章程                 D. 提交一份完整的软件需求规格说明书    <br />
  16. （A ） 是软件项目的一个突出的特点，也是软件项目最为普遍的一个特点。  A. 需求变更         B. 暂时性        C. 阶段性       D. 约束性   <br />
  17. WBS中的每一个具体细目通常都指定唯一的（ A） <br />
  A. 编码          B. 责任人         C. 功能模块        D. 提交截至期限    </p>
<ol>
  <li>任务分解时，（B）方法从一般到特殊的方向进行，从项目的大局着手，然后逐步分解子 细目，将项目变为更细更完善的部分。   </li>
  <li>模板参照         B. 自顶向下         C. 类比       D. 自底向上   </li>
</ol>
<p > 19. 任务分解时，（D）方法从特殊到一般的方向进行，首先定义一些特殊的任务，然后将这 些任务组织起来，形成更高级别的WBS层。 <br />
  A. 模板        B. 自顶向下         C. 类比           D. 自底向上   </p>
<ol>
  <li>填空   </li>
  <li>进行任务分解时，可以采用清单或者（图表）的形式表达任务分解的结果。 </li>
</ol>
<p > 2. 任务分解可以采用生存期为标准，或者以（功能）为标准，或者其他的方法。 <br />
  3. 任务分解结构中，任何分支最底层的细目叫做（工作包） <br />
  4. 任务分解结构中，（ 工作包）是完成一项具体工作所要求的一个特定的、可确定的、可交付以及独立的工作单元。 <br />
  5. （需求分析）也称为需求建模，是为最终用户所看到的系统建立一个概念模型，是对需求的抽象描述，并尽可能多的捕获现实世界的语义。 <br />
  7. 任务分解可以采用（生存期）为标准，或者以功能为标准，或者其他的方法。 <br />
  8. 进行任务分解时，可以采用（清单）或者图表的形式表达任务分解的结果。 </p>
<ol>
  <li>WBS的英文单词是（Work Breakdown Structure） </li>
</ol>
<p > 10. WBS是指（任务分解结构） <br />
  11. 进行任务分解时，可以采用清单或者（图表）的形式表达任务分解的结果。   </p>
<ol>
  <li>判断  1. 需求分析过程是确定项目如何实现的过程，并确定项目的技术方案（X ） </li>
  <li>对于一个重来没有做过的项目，开发WBS时，可以采用用自底向上的方法（ Y） </li>
</ol>
<p > 3. 直接谈判是直接与一家供应商谈判并签订合同，只适应一些特殊的项目（Y） <br />
  4. 招标书没有统一的格式，可繁可简。（Y） <br />
  5. 招标书的定义主要是甲方的需求定义。（Y）   <br />
  四.名词解释 </p>
<ol>
  <li>软件项目范围 </li>
  <li>软件需求 </li>
  <li>需求获取 </li>
</ol>
<p >解答: <br />
  1. 是指开发项目产品所包括的工作以及产生这些产品所用的过程。项目干系人必须在项目 要产生什么样的产品方面达成共识，也要在如何生产这些产品方面达成一定的共识。   <br />
  2. 软件需求是指用户对软件的功能和性能的要求，就是用户希望软件能做什么事情，完成 什么样的功能，达到什么样的性能。   <br />
  3. 需求获取是通过与用户的交流，对现有系统的观察及对任务进行分析，从而开发，捕获 和修订用户的需求。    </p>
<ol>
  <li>简答题   </li>
  <li>软件需求调查通常采用哪些形式？ </li>
  <li>软件项目任务分解常常采用哪些方法？ </li>
  <li>软件需求包括哪些层次？   </li>
  <li>软件需求建模的方法主要有哪些？ </li>
</ol>
<p > 5. 我们常常从哪些方面着手处理需求不明确问题？ <br />
  6. 验证需求一般包括哪些方面？   </p>
<ol>
  <li>你认为客户的需求变更的常见原因有哪些？   </li>
  <li>当解决问题过于复杂时，可以将问题进行分解，这样做的好处是什么？ </li>
  <li>对于较大的项目而言，在进行任务分解的时候，要注意哪些方面？ </li>
  <li>简单地描述一下软件需求工程。   </li>
</ol>
<p >解答:  1. Q&amp;A List邮件提问。电视电话会议访谈。需求专题讨论会。自行搜集需求。 </p>
<ol>
  <li>模板参照，类比，自顶向下，自底向上。 </li>
  <li>业务需求，用户需求，功能需求   </li>
  <li>原型分析法，结构化分析法，用例分析法，功能列表法等。   </li>
</ol>
<p >5. 1）让用户参与开发。2）开发用户界面原型。3）需求讨论会议4）强化需求分析和评审。 6. 需求的正确性。需求的一致性。需求的完整性。需求的可行性。需求的必要性。需求的可检 <br />
  验性。需求的可跟踪性。   </p>
<ol>
  <li>人类认识世界是一个有无知到已知，由浅入深的过程。我们以及客户对需求的认识也是 是一个逐步深入逐步明晰的过程。随着认识的深入，客户的需求才逐渐变的明确。（注意： 该答案供参考。答案合情合理即可）   </li>
  <li>将一个项目分解为更多的工作细目或者子项目，使项目变得更小，更易管理，更易操作。 这样可以提高估算成本，时间和资源的准确性。使工作变得更易操作，责任分工更加明确 </li>
  <li>任务分解的规模和数量因项目而异；对于项目最底层的工作要非常具体，任务分解结果 必须有利于责任分配；WBS分解的规模和数量因项目而异；参考类似项目的WBS；最低层是可 控的和可管理的，但是不要过细，最好不要超过7层；软件项目推荐分解到40小时的任务。 </li>
</ol>
<p >10. 软件需求工程的管理分为需求开发和需求管理。需求开发是对需求进行调查，收集，分 析，评价，定义等所有活动，主要包括需求获取，需求分析，需求规格说明书编写和需求验 证等过程。需求管理是对需求进行一些维护活动。 </p>
        </div>
    </div>
</div>
</div>
</div>
<%@include file="/bottom.jsp" %>
</div>
</html>