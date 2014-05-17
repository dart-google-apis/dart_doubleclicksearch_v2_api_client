part of doubleclicksearch_v2_api;

/** A message containing availability data relevant to DoubleClick Search. */
class Availability {

  /** DS advertiser ID. */
  core.int advertiserId;

  /** DS agency ID. */
  core.int agencyId;

  /** The time by which all conversions have been uploaded, in epoch millis UTC. */
  core.String availabilityTimestamp;

  /** The numeric segmentation identifier (for example, DoubleClick Search Floodlight activity ID). */
  core.int segmentationId;

  /** The friendly segmentation identifier (for example, DoubleClick Search Floodlight activity name). */
  core.String segmentationName;

  /** The segmentation type that this availability is for (its default value is FLOODLIGHT). */
  core.String segmentationType;

  /** Create new Availability from JSON data */
  Availability.fromJson(core.Map json) {
    if (json.containsKey("advertiserId")) {
      advertiserId = (json["advertiserId"] is core.String) ? core.int.parse(json["advertiserId"]) : json["advertiserId"];
    }
    if (json.containsKey("agencyId")) {
      agencyId = (json["agencyId"] is core.String) ? core.int.parse(json["agencyId"]) : json["agencyId"];
    }
    if (json.containsKey("availabilityTimestamp")) {
      availabilityTimestamp = json["availabilityTimestamp"];
    }
    if (json.containsKey("segmentationId")) {
      segmentationId = (json["segmentationId"] is core.String) ? core.int.parse(json["segmentationId"]) : json["segmentationId"];
    }
    if (json.containsKey("segmentationName")) {
      segmentationName = json["segmentationName"];
    }
    if (json.containsKey("segmentationType")) {
      segmentationType = json["segmentationType"];
    }
  }

  /** Create JSON Object for Availability */
  core.Map toJson() {
    var output = new core.Map();

    if (advertiserId != null) {
      output["advertiserId"] = advertiserId;
    }
    if (agencyId != null) {
      output["agencyId"] = agencyId;
    }
    if (availabilityTimestamp != null) {
      output["availabilityTimestamp"] = availabilityTimestamp;
    }
    if (segmentationId != null) {
      output["segmentationId"] = segmentationId;
    }
    if (segmentationName != null) {
      output["segmentationName"] = segmentationName;
    }
    if (segmentationType != null) {
      output["segmentationType"] = segmentationType;
    }

    return output;
  }

  /** Return String representation of Availability */
  core.String toString() => JSON.encode(this.toJson());

}

/** A conversion containing data relevant to DoubleClick Search. */
class Conversion {

  /** DS ad group ID. */
  core.int adGroupId;

  /** DS ad ID. */
  core.int adId;

  /** DS advertiser ID. */
  core.int advertiserId;

  /** DS agency ID. */
  core.int agencyId;

  /** DS campaign ID. */
  core.int campaignId;

  /** DS click ID for the conversion. */
  core.String clickId;

  /** Advertiser-provided ID for the conversion, also known as the order ID. */
  core.String conversionId;

  /** The time at which the conversion was last modified, in epoch millis UTC. */
  core.String conversionModifiedTimestamp;

  /** The time at which the conversion took place, in epoch millis UTC. */
  core.String conversionTimestamp;

  /** DS criterion (keyword) ID. */
  core.int criterionId;

  /** The currency code for the conversion's revenue. Should be in ISO 4217 alphabetic (3-char) format. */
  core.String currencyCode;

  /** Custom dimensions for the conversion, which can be used to filter data in a report. */
  core.List<CustomDimension> customDimension;

  /** Custom metrics for the conversion. */
  core.List<CustomMetric> customMetric;

  /** DS conversion ID. */
  core.int dsConversionId;

  /** DS engine account ID. */
  core.int engineAccountId;

  /** The advertiser-provided order id for the conversion. */
  core.String floodlightOrderId;

  /** The quantity of this conversion, in millis. */
  core.int quantityMillis;

  /** The revenue amount of this TRANSACTION conversion, in micros. */
  core.int revenueMicros;

  /** The numeric segmentation identifier (for example, DoubleClick Search Floodlight activity ID). */
  core.int segmentationId;

  /** The friendly segmentation identifier (for example, DoubleClick Search Floodlight activity name). */
  core.String segmentationName;

  /** The segmentation type of this conversion (for example, FLOODLIGHT). */
  core.String segmentationType;

  /** The state of the conversion, that is, either ACTIVE or DELETED. */
  core.String state;

  /** The type of the conversion, that is, either ACTION or TRANSACTION. An ACTION conversion is an action by the user that has no monetarily quantifiable value, while a TRANSACTION conversion is an action that does have a monetarily quantifiable value. Examples are email list signups (ACTION) versus ecommerce purchases (TRANSACTION). */
  core.String type;

  /** Create new Conversion from JSON data */
  Conversion.fromJson(core.Map json) {
    if (json.containsKey("adGroupId")) {
      adGroupId = (json["adGroupId"] is core.String) ? core.int.parse(json["adGroupId"]) : json["adGroupId"];
    }
    if (json.containsKey("adId")) {
      adId = (json["adId"] is core.String) ? core.int.parse(json["adId"]) : json["adId"];
    }
    if (json.containsKey("advertiserId")) {
      advertiserId = (json["advertiserId"] is core.String) ? core.int.parse(json["advertiserId"]) : json["advertiserId"];
    }
    if (json.containsKey("agencyId")) {
      agencyId = (json["agencyId"] is core.String) ? core.int.parse(json["agencyId"]) : json["agencyId"];
    }
    if (json.containsKey("campaignId")) {
      campaignId = (json["campaignId"] is core.String) ? core.int.parse(json["campaignId"]) : json["campaignId"];
    }
    if (json.containsKey("clickId")) {
      clickId = json["clickId"];
    }
    if (json.containsKey("conversionId")) {
      conversionId = json["conversionId"];
    }
    if (json.containsKey("conversionModifiedTimestamp")) {
      conversionModifiedTimestamp = json["conversionModifiedTimestamp"];
    }
    if (json.containsKey("conversionTimestamp")) {
      conversionTimestamp = json["conversionTimestamp"];
    }
    if (json.containsKey("criterionId")) {
      criterionId = (json["criterionId"] is core.String) ? core.int.parse(json["criterionId"]) : json["criterionId"];
    }
    if (json.containsKey("currencyCode")) {
      currencyCode = json["currencyCode"];
    }
    if (json.containsKey("customDimension")) {
      customDimension = json["customDimension"].map((customDimensionItem) => new CustomDimension.fromJson(customDimensionItem)).toList();
    }
    if (json.containsKey("customMetric")) {
      customMetric = json["customMetric"].map((customMetricItem) => new CustomMetric.fromJson(customMetricItem)).toList();
    }
    if (json.containsKey("dsConversionId")) {
      dsConversionId = (json["dsConversionId"] is core.String) ? core.int.parse(json["dsConversionId"]) : json["dsConversionId"];
    }
    if (json.containsKey("engineAccountId")) {
      engineAccountId = (json["engineAccountId"] is core.String) ? core.int.parse(json["engineAccountId"]) : json["engineAccountId"];
    }
    if (json.containsKey("floodlightOrderId")) {
      floodlightOrderId = json["floodlightOrderId"];
    }
    if (json.containsKey("quantityMillis")) {
      quantityMillis = (json["quantityMillis"] is core.String) ? core.int.parse(json["quantityMillis"]) : json["quantityMillis"];
    }
    if (json.containsKey("revenueMicros")) {
      revenueMicros = (json["revenueMicros"] is core.String) ? core.int.parse(json["revenueMicros"]) : json["revenueMicros"];
    }
    if (json.containsKey("segmentationId")) {
      segmentationId = (json["segmentationId"] is core.String) ? core.int.parse(json["segmentationId"]) : json["segmentationId"];
    }
    if (json.containsKey("segmentationName")) {
      segmentationName = json["segmentationName"];
    }
    if (json.containsKey("segmentationType")) {
      segmentationType = json["segmentationType"];
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Conversion */
  core.Map toJson() {
    var output = new core.Map();

    if (adGroupId != null) {
      output["adGroupId"] = adGroupId;
    }
    if (adId != null) {
      output["adId"] = adId;
    }
    if (advertiserId != null) {
      output["advertiserId"] = advertiserId;
    }
    if (agencyId != null) {
      output["agencyId"] = agencyId;
    }
    if (campaignId != null) {
      output["campaignId"] = campaignId;
    }
    if (clickId != null) {
      output["clickId"] = clickId;
    }
    if (conversionId != null) {
      output["conversionId"] = conversionId;
    }
    if (conversionModifiedTimestamp != null) {
      output["conversionModifiedTimestamp"] = conversionModifiedTimestamp;
    }
    if (conversionTimestamp != null) {
      output["conversionTimestamp"] = conversionTimestamp;
    }
    if (criterionId != null) {
      output["criterionId"] = criterionId;
    }
    if (currencyCode != null) {
      output["currencyCode"] = currencyCode;
    }
    if (customDimension != null) {
      output["customDimension"] = customDimension.map((customDimensionItem) => customDimensionItem.toJson()).toList();
    }
    if (customMetric != null) {
      output["customMetric"] = customMetric.map((customMetricItem) => customMetricItem.toJson()).toList();
    }
    if (dsConversionId != null) {
      output["dsConversionId"] = dsConversionId;
    }
    if (engineAccountId != null) {
      output["engineAccountId"] = engineAccountId;
    }
    if (floodlightOrderId != null) {
      output["floodlightOrderId"] = floodlightOrderId;
    }
    if (quantityMillis != null) {
      output["quantityMillis"] = quantityMillis;
    }
    if (revenueMicros != null) {
      output["revenueMicros"] = revenueMicros;
    }
    if (segmentationId != null) {
      output["segmentationId"] = segmentationId;
    }
    if (segmentationName != null) {
      output["segmentationName"] = segmentationName;
    }
    if (segmentationType != null) {
      output["segmentationType"] = segmentationType;
    }
    if (state != null) {
      output["state"] = state;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Conversion */
  core.String toString() => JSON.encode(this.toJson());

}

/** A list of conversions. */
class ConversionList {

  /** The conversions being requested. */
  core.List<Conversion> conversion;

  /** Identifies this as a ConversionList resource. Value: the fixed string doubleclicksearch#conversionList. */
  core.String kind;

  /** Create new ConversionList from JSON data */
  ConversionList.fromJson(core.Map json) {
    if (json.containsKey("conversion")) {
      conversion = json["conversion"].map((conversionItem) => new Conversion.fromJson(conversionItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ConversionList */
  core.Map toJson() {
    var output = new core.Map();

    if (conversion != null) {
      output["conversion"] = conversion.map((conversionItem) => conversionItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ConversionList */
  core.String toString() => JSON.encode(this.toJson());

}

/** A message containing the custome dimension. */
class CustomDimension {

  /** Custom dimension name. */
  core.String name;

  /** Custom dimension value. */
  core.String value;

  /** Create new CustomDimension from JSON data */
  CustomDimension.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for CustomDimension */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of CustomDimension */
  core.String toString() => JSON.encode(this.toJson());

}

/** A message containing the custome metric. */
class CustomMetric {

  /** Custom metric name. */
  core.String name;

  /** Custom metric numeric value. */
  core.num value;

  /** Create new CustomMetric from JSON data */
  CustomMetric.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for CustomMetric */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of CustomMetric */
  core.String toString() => JSON.encode(this.toJson());

}

/** A DoubleClick Search report. This object contains the report request, some report metadata such as currency code, and the generated report rows or report files. */
class Report {

  /** Asynchronous report only. Contains a list of generated report files once the report has succesfully completed. */
  core.List<ReportFiles> files;

  /** Asynchronous report only. Id of the report. */
  core.String id;

  /** Asynchronous report only. True if and only if the report has completed successfully and the report files are ready to be downloaded. */
  core.bool isReportReady;

  /** Identifies this as a Report resource. Value: the fixed string doubleclicksearch#report. */
  core.String kind;

  /** The request that created the report. Optional fields not specified in the original request are filled with default values. */
  ReportRequest request;

  /** The number of report rows generated by the report, not including headers. */
  core.int rowCount;

  /** Synchronous report only. Generated report rows. */
  core.List<ReportRow> rows;

  /** The currency code of all monetary values produced in the report, including values that are set by users (e.g., keyword bid settings) and metrics (e.g., cost and revenue). The currency code of a report is determined by the statisticsCurrency field of the report request. */
  core.String statisticsCurrencyCode;

  /** If all statistics of the report are sourced from the same time zone, this would be it. Otherwise the field is unset. */
  core.String statisticsTimeZone;

  /** Create new Report from JSON data */
  Report.fromJson(core.Map json) {
    if (json.containsKey("files")) {
      files = json["files"].map((filesItem) => new ReportFiles.fromJson(filesItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("isReportReady")) {
      isReportReady = json["isReportReady"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("request")) {
      request = new ReportRequest.fromJson(json["request"]);
    }
    if (json.containsKey("rowCount")) {
      rowCount = json["rowCount"];
    }
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => new ReportRow.fromJson(rowsItem)).toList();
    }
    if (json.containsKey("statisticsCurrencyCode")) {
      statisticsCurrencyCode = json["statisticsCurrencyCode"];
    }
    if (json.containsKey("statisticsTimeZone")) {
      statisticsTimeZone = json["statisticsTimeZone"];
    }
  }

  /** Create JSON Object for Report */
  core.Map toJson() {
    var output = new core.Map();

    if (files != null) {
      output["files"] = files.map((filesItem) => filesItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (isReportReady != null) {
      output["isReportReady"] = isReportReady;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (request != null) {
      output["request"] = request.toJson();
    }
    if (rowCount != null) {
      output["rowCount"] = rowCount;
    }
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.toJson()).toList();
    }
    if (statisticsCurrencyCode != null) {
      output["statisticsCurrencyCode"] = statisticsCurrencyCode;
    }
    if (statisticsTimeZone != null) {
      output["statisticsTimeZone"] = statisticsTimeZone;
    }

    return output;
  }

  /** Return String representation of Report */
  core.String toString() => JSON.encode(this.toJson());

}

class ReportFiles {

  /** The size of this report file in bytes. */
  core.int byteCount;

  /** Use this url to download the report file. */
  core.String url;

  /** Create new ReportFiles from JSON data */
  ReportFiles.fromJson(core.Map json) {
    if (json.containsKey("byteCount")) {
      byteCount = (json["byteCount"] is core.String) ? core.int.parse(json["byteCount"]) : json["byteCount"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ReportFiles */
  core.Map toJson() {
    var output = new core.Map();

    if (byteCount != null) {
      output["byteCount"] = byteCount;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ReportFiles */
  core.String toString() => JSON.encode(this.toJson());

}

/** A request object used to create a DoubleClick Search report. */
class ReportRequest {

  /** The columns to include in the report. This includes both DoubleClick Search columns and saved columns. For DoubleClick Search columns, only the columnName parameter is required. For saved columns only the savedColumnName parameter is required. Both columnName and savedColumnName cannot be set in the same stanza. */
  core.List<ReportRequestColumns> columns;

  /** Format that the report should be returned in. Currently csv or tsv is supported. */
  core.String downloadFormat;

  /** A list of filters to be applied to the report. */
  core.List<ReportRequestFilters> filters;

  /** Determines if removed entities should be included in the report. Defaults to false. Deprecated, please use includeRemovedEntities instead. */
  core.bool includeDeletedEntities;

  /** Determines if removed entities should be included in the report. Defaults to false. */
  core.bool includeRemovedEntities;

  /** Asynchronous report only. The maximum number of rows per report file. A large report is split into many files based on this field. Acceptable values are 1000000 to 100000000, inclusive. */
  core.int maxRowsPerFile;

  /** Synchronous report only. A list of columns and directions defining sorting to be performed on the report rows. */
  core.List<ReportRequestOrderBy> orderBy;

  /** The reportScope is a set of IDs that are used to determine which subset of entities will be returned in the report. The full lineage of IDs from the lowest scoped level desired up through agency is required. */
  ReportRequestReportScope reportScope;

  /** Determines the type of rows that are returned in the report. For example, if you specify reportType: keyword, each row in the report will contain data about a keyword. See the Types of Reports reference for the columns that are available for each type. */
  core.String reportType;

  /** Synchronous report only. The maxinum number of rows to return; additional rows are dropped. Acceptable values are 0 to 10000, inclusive. Defaults to 10000. */
  core.int rowCount;

  /** Synchronous report only. Zero-based index of the first row to return. Acceptable values are 0 to 50000, inclusive. Defaults to 0. */
  core.int startRow;

  /** Specifies the currency in which monetary will be returned. Possible values are: usd, agency (valid if the report is scoped to agency or lower), advertiser (valid if the report is scoped to * advertiser or lower), or account (valid if the report is scoped to engine account or lower). */
  core.String statisticsCurrency;

  /** If metrics are requested in a report, this argument will be used to restrict the metrics to a specific time range. */
  ReportRequestTimeRange timeRange;

  /** If true, the report would only be created if all the requested stat data are sourced from a single timezone. Defaults to false. */
  core.bool verifySingleTimeZone;

  /** Create new ReportRequest from JSON data */
  ReportRequest.fromJson(core.Map json) {
    if (json.containsKey("columns")) {
      columns = json["columns"].map((columnsItem) => new ReportRequestColumns.fromJson(columnsItem)).toList();
    }
    if (json.containsKey("downloadFormat")) {
      downloadFormat = json["downloadFormat"];
    }
    if (json.containsKey("filters")) {
      filters = json["filters"].map((filtersItem) => new ReportRequestFilters.fromJson(filtersItem)).toList();
    }
    if (json.containsKey("includeDeletedEntities")) {
      includeDeletedEntities = json["includeDeletedEntities"];
    }
    if (json.containsKey("includeRemovedEntities")) {
      includeRemovedEntities = json["includeRemovedEntities"];
    }
    if (json.containsKey("maxRowsPerFile")) {
      maxRowsPerFile = json["maxRowsPerFile"];
    }
    if (json.containsKey("orderBy")) {
      orderBy = json["orderBy"].map((orderByItem) => new ReportRequestOrderBy.fromJson(orderByItem)).toList();
    }
    if (json.containsKey("reportScope")) {
      reportScope = new ReportRequestReportScope.fromJson(json["reportScope"]);
    }
    if (json.containsKey("reportType")) {
      reportType = json["reportType"];
    }
    if (json.containsKey("rowCount")) {
      rowCount = json["rowCount"];
    }
    if (json.containsKey("startRow")) {
      startRow = json["startRow"];
    }
    if (json.containsKey("statisticsCurrency")) {
      statisticsCurrency = json["statisticsCurrency"];
    }
    if (json.containsKey("timeRange")) {
      timeRange = new ReportRequestTimeRange.fromJson(json["timeRange"]);
    }
    if (json.containsKey("verifySingleTimeZone")) {
      verifySingleTimeZone = json["verifySingleTimeZone"];
    }
  }

  /** Create JSON Object for ReportRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (columns != null) {
      output["columns"] = columns.map((columnsItem) => columnsItem.toJson()).toList();
    }
    if (downloadFormat != null) {
      output["downloadFormat"] = downloadFormat;
    }
    if (filters != null) {
      output["filters"] = filters.map((filtersItem) => filtersItem.toJson()).toList();
    }
    if (includeDeletedEntities != null) {
      output["includeDeletedEntities"] = includeDeletedEntities;
    }
    if (includeRemovedEntities != null) {
      output["includeRemovedEntities"] = includeRemovedEntities;
    }
    if (maxRowsPerFile != null) {
      output["maxRowsPerFile"] = maxRowsPerFile;
    }
    if (orderBy != null) {
      output["orderBy"] = orderBy.map((orderByItem) => orderByItem.toJson()).toList();
    }
    if (reportScope != null) {
      output["reportScope"] = reportScope.toJson();
    }
    if (reportType != null) {
      output["reportType"] = reportType;
    }
    if (rowCount != null) {
      output["rowCount"] = rowCount;
    }
    if (startRow != null) {
      output["startRow"] = startRow;
    }
    if (statisticsCurrency != null) {
      output["statisticsCurrency"] = statisticsCurrency;
    }
    if (timeRange != null) {
      output["timeRange"] = timeRange.toJson();
    }
    if (verifySingleTimeZone != null) {
      output["verifySingleTimeZone"] = verifySingleTimeZone;
    }

    return output;
  }

  /** Return String representation of ReportRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class ReportRequestColumns {

  /** Name of a DoubleClick Search column to include in the report. */
  core.String columnName;

  /** Inclusive day in YYYY-MM-DD format. When provided, this overrides the overall time range of the report for this column only. Must be provided together with startDate. */
  core.String endDate;

  /** Synchronous report only. Set to true to group by this column. Defaults to false. */
  core.bool groupByColumn;

  /** Text used to identify this column in the report output; defaults to columnName or savedColumnName when not specified. This can be used to prevent collisions between DoubleClick Search columns and saved columns with the same name. */
  core.String headerText;

  /** Name of a saved column to include in the report. The report must be scoped at advertiser or lower, and this saved column must already be created in the DoubleClick Search UI. */
  core.String savedColumnName;

  /** Inclusive date in YYYY-MM-DD format. When provided, this overrides the overall time range of the report for this column only. Must be provided together with endDate. */
  core.String startDate;

  /** Create new ReportRequestColumns from JSON data */
  ReportRequestColumns.fromJson(core.Map json) {
    if (json.containsKey("columnName")) {
      columnName = json["columnName"];
    }
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("groupByColumn")) {
      groupByColumn = json["groupByColumn"];
    }
    if (json.containsKey("headerText")) {
      headerText = json["headerText"];
    }
    if (json.containsKey("savedColumnName")) {
      savedColumnName = json["savedColumnName"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for ReportRequestColumns */
  core.Map toJson() {
    var output = new core.Map();

    if (columnName != null) {
      output["columnName"] = columnName;
    }
    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (groupByColumn != null) {
      output["groupByColumn"] = groupByColumn;
    }
    if (headerText != null) {
      output["headerText"] = headerText;
    }
    if (savedColumnName != null) {
      output["savedColumnName"] = savedColumnName;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of ReportRequestColumns */
  core.String toString() => JSON.encode(this.toJson());

}

class ReportRequestFilters {

  /** Column to perform the filter on. This can be a DoubleClick Search column or a saved column. */
  ReportRequestFiltersColumn column;

  /** Operator to use in the filter. See the filter reference for a list of available operators. */
  core.String operator;

  /** A list of values to filter the column value against. */
  core.List<core.Object> values;

  /** Create new ReportRequestFilters from JSON data */
  ReportRequestFilters.fromJson(core.Map json) {
    if (json.containsKey("column")) {
      column = new ReportRequestFiltersColumn.fromJson(json["column"]);
    }
    if (json.containsKey("operator")) {
      operator = json["operator"];
    }
    if (json.containsKey("values")) {
      values = json["values"].toList();
    }
  }

  /** Create JSON Object for ReportRequestFilters */
  core.Map toJson() {
    var output = new core.Map();

    if (column != null) {
      output["column"] = column.toJson();
    }
    if (operator != null) {
      output["operator"] = operator;
    }
    if (values != null) {
      output["values"] = values.toList();
    }

    return output;
  }

  /** Return String representation of ReportRequestFilters */
  core.String toString() => JSON.encode(this.toJson());

}

/** Column to perform the filter on. This can be a DoubleClick Search column or a saved column. */
class ReportRequestFiltersColumn {

  /** Name of a DoubleClick Search column to filter on. */
  core.String columnName;

  /** Name of a saved column to filter on. */
  core.String savedColumnName;

  /** Create new ReportRequestFiltersColumn from JSON data */
  ReportRequestFiltersColumn.fromJson(core.Map json) {
    if (json.containsKey("columnName")) {
      columnName = json["columnName"];
    }
    if (json.containsKey("savedColumnName")) {
      savedColumnName = json["savedColumnName"];
    }
  }

  /** Create JSON Object for ReportRequestFiltersColumn */
  core.Map toJson() {
    var output = new core.Map();

    if (columnName != null) {
      output["columnName"] = columnName;
    }
    if (savedColumnName != null) {
      output["savedColumnName"] = savedColumnName;
    }

    return output;
  }

  /** Return String representation of ReportRequestFiltersColumn */
  core.String toString() => JSON.encode(this.toJson());

}

class ReportRequestOrderBy {

  /** Column to perform the sort on. This can be a DoubleClick Search-defined column or a saved column. */
  ReportRequestOrderByColumn column;

  /** The sort direction, which is either ascending or descending. */
  core.String sortOrder;

  /** Create new ReportRequestOrderBy from JSON data */
  ReportRequestOrderBy.fromJson(core.Map json) {
    if (json.containsKey("column")) {
      column = new ReportRequestOrderByColumn.fromJson(json["column"]);
    }
    if (json.containsKey("sortOrder")) {
      sortOrder = json["sortOrder"];
    }
  }

  /** Create JSON Object for ReportRequestOrderBy */
  core.Map toJson() {
    var output = new core.Map();

    if (column != null) {
      output["column"] = column.toJson();
    }
    if (sortOrder != null) {
      output["sortOrder"] = sortOrder;
    }

    return output;
  }

  /** Return String representation of ReportRequestOrderBy */
  core.String toString() => JSON.encode(this.toJson());

}

/** Column to perform the sort on. This can be a DoubleClick Search-defined column or a saved column. */
class ReportRequestOrderByColumn {

  /** Name of a DoubleClick Search column to sort by. */
  core.String columnName;

  /** Name of a saved column to sort by. */
  core.String savedColumnName;

  /** Create new ReportRequestOrderByColumn from JSON data */
  ReportRequestOrderByColumn.fromJson(core.Map json) {
    if (json.containsKey("columnName")) {
      columnName = json["columnName"];
    }
    if (json.containsKey("savedColumnName")) {
      savedColumnName = json["savedColumnName"];
    }
  }

  /** Create JSON Object for ReportRequestOrderByColumn */
  core.Map toJson() {
    var output = new core.Map();

    if (columnName != null) {
      output["columnName"] = columnName;
    }
    if (savedColumnName != null) {
      output["savedColumnName"] = savedColumnName;
    }

    return output;
  }

  /** Return String representation of ReportRequestOrderByColumn */
  core.String toString() => JSON.encode(this.toJson());

}

/** The reportScope is a set of IDs that are used to determine which subset of entities will be returned in the report. The full lineage of IDs from the lowest scoped level desired up through agency is required. */
class ReportRequestReportScope {

  /** DS ad group ID. */
  core.int adGroupId;

  /** DS ad ID. */
  core.int adId;

  /** DS advertiser ID. */
  core.int advertiserId;

  /** DS agency ID. */
  core.int agencyId;

  /** DS campaign ID. */
  core.int campaignId;

  /** DS engine account ID. */
  core.int engineAccountId;

  /** DS keyword ID. */
  core.int keywordId;

  /** Create new ReportRequestReportScope from JSON data */
  ReportRequestReportScope.fromJson(core.Map json) {
    if (json.containsKey("adGroupId")) {
      adGroupId = (json["adGroupId"] is core.String) ? core.int.parse(json["adGroupId"]) : json["adGroupId"];
    }
    if (json.containsKey("adId")) {
      adId = (json["adId"] is core.String) ? core.int.parse(json["adId"]) : json["adId"];
    }
    if (json.containsKey("advertiserId")) {
      advertiserId = (json["advertiserId"] is core.String) ? core.int.parse(json["advertiserId"]) : json["advertiserId"];
    }
    if (json.containsKey("agencyId")) {
      agencyId = (json["agencyId"] is core.String) ? core.int.parse(json["agencyId"]) : json["agencyId"];
    }
    if (json.containsKey("campaignId")) {
      campaignId = (json["campaignId"] is core.String) ? core.int.parse(json["campaignId"]) : json["campaignId"];
    }
    if (json.containsKey("engineAccountId")) {
      engineAccountId = (json["engineAccountId"] is core.String) ? core.int.parse(json["engineAccountId"]) : json["engineAccountId"];
    }
    if (json.containsKey("keywordId")) {
      keywordId = (json["keywordId"] is core.String) ? core.int.parse(json["keywordId"]) : json["keywordId"];
    }
  }

  /** Create JSON Object for ReportRequestReportScope */
  core.Map toJson() {
    var output = new core.Map();

    if (adGroupId != null) {
      output["adGroupId"] = adGroupId;
    }
    if (adId != null) {
      output["adId"] = adId;
    }
    if (advertiserId != null) {
      output["advertiserId"] = advertiserId;
    }
    if (agencyId != null) {
      output["agencyId"] = agencyId;
    }
    if (campaignId != null) {
      output["campaignId"] = campaignId;
    }
    if (engineAccountId != null) {
      output["engineAccountId"] = engineAccountId;
    }
    if (keywordId != null) {
      output["keywordId"] = keywordId;
    }

    return output;
  }

  /** Return String representation of ReportRequestReportScope */
  core.String toString() => JSON.encode(this.toJson());

}

/** If metrics are requested in a report, this argument will be used to restrict the metrics to a specific time range. */
class ReportRequestTimeRange {

  /** Inclusive UTC timestamp in RFC format, e.g., 2013-07-16T10:16:23.555Z. See additional references on how changed attribute reports work. */
  core.String changedAttributesSinceTimestamp;

  /** Inclusive UTC timestamp in RFC format, e.g., 2013-07-16T10:16:23.555Z. See additional references on how changed metrics reports work. */
  core.String changedMetricsSinceTimestamp;

  /** Inclusive date in YYYY-MM-DD format. */
  core.String endDate;

  /** Inclusive date in YYYY-MM-DD format. */
  core.String startDate;

  /** Create new ReportRequestTimeRange from JSON data */
  ReportRequestTimeRange.fromJson(core.Map json) {
    if (json.containsKey("changedAttributesSinceTimestamp")) {
      changedAttributesSinceTimestamp = json["changedAttributesSinceTimestamp"];
    }
    if (json.containsKey("changedMetricsSinceTimestamp")) {
      changedMetricsSinceTimestamp = json["changedMetricsSinceTimestamp"];
    }
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for ReportRequestTimeRange */
  core.Map toJson() {
    var output = new core.Map();

    if (changedAttributesSinceTimestamp != null) {
      output["changedAttributesSinceTimestamp"] = changedAttributesSinceTimestamp;
    }
    if (changedMetricsSinceTimestamp != null) {
      output["changedMetricsSinceTimestamp"] = changedMetricsSinceTimestamp;
    }
    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of ReportRequestTimeRange */
  core.String toString() => JSON.encode(this.toJson());

}

/** A row in a DoubleClick Search report. */
class ReportRow extends SchemaAnyObject {

  /** Create new ReportRow from JSON data */
  ReportRow.fromJson(core.Map json) {
    innerMap.addAll(json);
  }

  /** Create JSON Object for ReportRow */
  core.Map toJson() {
    return innerMap;
  }

  /** Return String representation of ReportRow */
  core.String toString() => JSON.encode(this.toJson());

}

/** A saved column */
class SavedColumn {

  /** Identifies this as a SavedColumn resource. Value: the fixed string doubleclicksearch#savedColumn. */
  core.String kind;

  /** The name of the saved column. */
  core.String savedColumnName;

  /** The type of data this saved column will produce. */
  core.String type;

  /** Create new SavedColumn from JSON data */
  SavedColumn.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("savedColumnName")) {
      savedColumnName = json["savedColumnName"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for SavedColumn */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (savedColumnName != null) {
      output["savedColumnName"] = savedColumnName;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of SavedColumn */
  core.String toString() => JSON.encode(this.toJson());

}

/** A list of saved columns. Advertisers create saved columns to report on Floodlight activities, Google Analytics goals, or custom KPIs. To request reports with saved columns, you'll need the saved column names that are available from this list. */
class SavedColumnList {

  /** The saved columns being requested. */
  core.List<SavedColumn> items;

  /** Identifies this as a SavedColumnList resource. Value: the fixed string doubleclicksearch#savedColumnList. */
  core.String kind;

  /** Create new SavedColumnList from JSON data */
  SavedColumnList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new SavedColumn.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for SavedColumnList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of SavedColumnList */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request to update availability. */
class UpdateAvailabilityRequest {

  /** The availabilities being requested. */
  core.List<Availability> availabilities;

  /** Create new UpdateAvailabilityRequest from JSON data */
  UpdateAvailabilityRequest.fromJson(core.Map json) {
    if (json.containsKey("availabilities")) {
      availabilities = json["availabilities"].map((availabilitiesItem) => new Availability.fromJson(availabilitiesItem)).toList();
    }
  }

  /** Create JSON Object for UpdateAvailabilityRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (availabilities != null) {
      output["availabilities"] = availabilities.map((availabilitiesItem) => availabilitiesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of UpdateAvailabilityRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response to a update availability request. */
class UpdateAvailabilityResponse {

  /** The availabilities being returned. */
  core.List<Availability> availabilities;

  /** Create new UpdateAvailabilityResponse from JSON data */
  UpdateAvailabilityResponse.fromJson(core.Map json) {
    if (json.containsKey("availabilities")) {
      availabilities = json["availabilities"].map((availabilitiesItem) => new Availability.fromJson(availabilitiesItem)).toList();
    }
  }

  /** Create JSON Object for UpdateAvailabilityResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (availabilities != null) {
      output["availabilities"] = availabilities.map((availabilitiesItem) => availabilitiesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of UpdateAvailabilityResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
