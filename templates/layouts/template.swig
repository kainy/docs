<!doctype html>

<html>

<head>
    {% include 'templates/include/head.html' %}

</head>


<body  class="dashboard-init" data-offset="0" ng-cloak ng-controller="AppCtrl">

{% if node=='qcloud' %}
  {% include 'templates/include/qcloudheader.html' %}
{% endif %}

{% if node!='qcloud' %}
  {% include 'templates/include/header.html' %}
{% endif %}

{% include 'templates/include/doc-nav.html' %}

<div class="container-fluid">

  <div class="row">

    <div class="sidebar-gruntfile-trigger  col-sm-3" id="left-nav">

      <div class="sidebar-affix-shadow sidebar-hover-off">

        <div class="sidebar-wrapper" id="toc-wrapper">

        </div>
        <!-- .sidebar-wrapper -->

      </div>
      <!-- .sidebar-affix-shadow -->

    </div>
    <!-- .col-md-3 -->

    <div class="col-sm-9 sidebar-gruntfile-trigger">
      <div class="doc-content with-comment" id="content">
        {{body}}
      </div>
    </div>
    <!-- .col-md-9 -->
  </div>
  <!-- .row -->

</div>
<!-- .container-fluid -->
{% include 'templates/include/common-footer.html' %}

{% if node=='qcloud' %}
  {% include 'templates/include/qcloudfooter.html' %}
{% endif %}

{% if node!='qcloud' %}
  {% include 'templates/include/footer.html' %}
{% endif %}

</body>

</html>