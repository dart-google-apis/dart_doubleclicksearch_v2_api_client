part of doubleclicksearch_v2_api;

class ConversionResource_ {

  final Client _client;

  ConversionResource_(Client client) :
      _client = client;

  /**
   * Retrieves a list of conversions from a DoubleClick Search engine account.
   *
   * [agencyId] - Numeric ID of the agency.
   *
   * [advertiserId] - Numeric ID of the advertiser.
   *
   * [engineAccountId] - Numeric ID of the engine account.
   *
   * [endDate] - Last date (inclusive) on which to retrieve conversions. Format is yyyymmdd.
   *   Minimum: 20091101
   *   Maximum: 99991231
   *
   * [rowCount] - The number of conversions to return per call.
   *   Minimum: 1
   *   Maximum: 1000
   *
   * [startDate] - First date (inclusive) on which to retrieve conversions. Format is yyyymmdd.
   *   Minimum: 20091101
   *   Maximum: 99991231
   *
   * [startRow] - The 0-based starting index for retrieving conversions results.
   *
   * [adGroupId] - Numeric ID of the ad group.
   *
   * [adId] - Numeric ID of the ad.
   *
   * [campaignId] - Numeric ID of the campaign.
   *
   * [criterionId] - Numeric ID of the criterion.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ConversionList> get(core.int agencyId, core.int advertiserId, core.int engineAccountId, core.int endDate, core.int rowCount, core.int startDate, core.int startRow, {core.int adGroupId, core.int adId, core.int campaignId, core.int criterionId, core.Map optParams}) {
    var url = "agency/{agencyId}/advertiser/{advertiserId}/engine/{engineAccountId}/conversion";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adGroupId != null) queryParams["adGroupId"] = adGroupId;
    if (adId != null) queryParams["adId"] = adId;
    if (advertiserId == null) paramErrors.add("advertiserId is required");
    if (advertiserId != null) urlParams["advertiserId"] = advertiserId;
    if (agencyId == null) paramErrors.add("agencyId is required");
    if (agencyId != null) urlParams["agencyId"] = agencyId;
    if (campaignId != null) queryParams["campaignId"] = campaignId;
    if (criterionId != null) queryParams["criterionId"] = criterionId;
    if (endDate == null) paramErrors.add("endDate is required");
    if (endDate != null) queryParams["endDate"] = endDate;
    if (engineAccountId == null) paramErrors.add("engineAccountId is required");
    if (engineAccountId != null) urlParams["engineAccountId"] = engineAccountId;
    if (rowCount == null) paramErrors.add("rowCount is required");
    if (rowCount != null) queryParams["rowCount"] = rowCount;
    if (startDate == null) paramErrors.add("startDate is required");
    if (startDate != null) queryParams["startDate"] = startDate;
    if (startRow == null) paramErrors.add("startRow is required");
    if (startRow != null) queryParams["startRow"] = startRow;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ConversionList.fromJson(data));
  }

  /**
   * Inserts a batch of new conversions into DoubleClick Search.
   *
   * [request] - ConversionList to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ConversionList> insert(ConversionList request, {core.Map optParams}) {
    var url = "conversion";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ConversionList.fromJson(data));
  }

  /**
   * Updates a batch of conversions in DoubleClick Search. This method supports patch semantics.
   *
   * [request] - ConversionList to send in this request
   *
   * [advertiserId] - Numeric ID of the advertiser.
   *
   * [agencyId] - Numeric ID of the agency.
   *
   * [endDate] - Last date (inclusive) on which to retrieve conversions. Format is yyyymmdd.
   *   Minimum: 20091101
   *   Maximum: 99991231
   *
   * [engineAccountId] - Numeric ID of the engine account.
   *
   * [rowCount] - The number of conversions to return per call.
   *   Minimum: 1
   *   Maximum: 1000
   *
   * [startDate] - First date (inclusive) on which to retrieve conversions. Format is yyyymmdd.
   *   Minimum: 20091101
   *   Maximum: 99991231
   *
   * [startRow] - The 0-based starting index for retrieving conversions results.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ConversionList> patch(ConversionList request, core.int advertiserId, core.int agencyId, core.int endDate, core.int engineAccountId, core.int rowCount, core.int startDate, core.int startRow, {core.Map optParams}) {
    var url = "conversion";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (advertiserId == null) paramErrors.add("advertiserId is required");
    if (advertiserId != null) queryParams["advertiserId"] = advertiserId;
    if (agencyId == null) paramErrors.add("agencyId is required");
    if (agencyId != null) queryParams["agencyId"] = agencyId;
    if (endDate == null) paramErrors.add("endDate is required");
    if (endDate != null) queryParams["endDate"] = endDate;
    if (engineAccountId == null) paramErrors.add("engineAccountId is required");
    if (engineAccountId != null) queryParams["engineAccountId"] = engineAccountId;
    if (rowCount == null) paramErrors.add("rowCount is required");
    if (rowCount != null) queryParams["rowCount"] = rowCount;
    if (startDate == null) paramErrors.add("startDate is required");
    if (startDate != null) queryParams["startDate"] = startDate;
    if (startRow == null) paramErrors.add("startRow is required");
    if (startRow != null) queryParams["startRow"] = startRow;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ConversionList.fromJson(data));
  }

  /**
   * Updates a batch of conversions in DoubleClick Search.
   *
   * [request] - ConversionList to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ConversionList> update(ConversionList request, {core.Map optParams}) {
    var url = "conversion";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ConversionList.fromJson(data));
  }

  /**
   * Updates the availabilities of a batch of floodlight activities in DoubleClick Search.
   *
   * [request] - UpdateAvailabilityRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UpdateAvailabilityResponse> updateAvailability(UpdateAvailabilityRequest request, {core.Map optParams}) {
    var url = "conversion/updateAvailability";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UpdateAvailabilityResponse.fromJson(data));
  }
}

class ReportsResource_ {

  final Client _client;

  ReportsResource_(Client client) :
      _client = client;

  /**
   * Generates and returns a report immediately.
   *
   * [request] - ReportRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Report> generate(ReportRequest request, {core.Map optParams}) {
    var url = "reports/generate";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Report.fromJson(data));
  }

  /**
   * Polls for the status of a report request.
   *
   * [reportId] - ID of the report request being polled.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Report> get(core.String reportId, {core.Map optParams}) {
    var url = "reports/{reportId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Report.fromJson(data));
  }

  /**
   * Downloads a report file.
   *
   * [reportId] - ID of the report.
   *
   * [reportFragment] - The index of the report fragment to download.
   *   Minimum: 0
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> getFile(core.String reportId, core.int reportFragment, {core.Map optParams}) {
    var url = "reports/{reportId}/files/{reportFragment}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (reportFragment == null) paramErrors.add("reportFragment is required");
    if (reportFragment != null) urlParams["reportFragment"] = reportFragment;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Inserts a report request into the reporting system.
   *
   * [request] - ReportRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Report> request(ReportRequest request, {core.Map optParams}) {
    var url = "reports";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Report.fromJson(data));
  }
}

class SavedColumnsResource_ {

  final Client _client;

  SavedColumnsResource_(Client client) :
      _client = client;

  /**
   * Retrieve the list of saved columns for a specified advertiser.
   *
   * [agencyId] - DS ID of the agency.
   *
   * [advertiserId] - DS ID of the advertiser.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SavedColumnList> list(core.int agencyId, core.int advertiserId, {core.Map optParams}) {
    var url = "agency/{agencyId}/advertiser/{advertiserId}/savedcolumns";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (advertiserId == null) paramErrors.add("advertiserId is required");
    if (advertiserId != null) urlParams["advertiserId"] = advertiserId;
    if (agencyId == null) paramErrors.add("agencyId is required");
    if (agencyId != null) urlParams["agencyId"] = agencyId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SavedColumnList.fromJson(data));
  }
}

