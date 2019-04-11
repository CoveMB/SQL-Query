SELECT
  *
FROM
  GAInterDecCampaignReport.CAMPAIGN_PERFORMANCE_REPORT
WHERE
  Date >= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), WEEK(MONDAY)), INTERVAL 1 WEEK)
  AND Date <= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), WEEK(SUNDAY)), INTERVAL 0 WEEK);

SELECT
  SUM(Cost)
FROM
  GAInterDecCampaignReport.CAMPAIGN_PERFORMANCE_REPORT
WHERE
  Date >= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), WEEK(MONDAY)), INTERVAL 1 WEEK)
  AND Date <= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), WEEK(SUNDAY)), INTERVAL 0 WEEK);





SELECT
  SUM(Cost),
  AVG(SearchImpressionShare)
FROM
  GAInterDecCampaignReport.CAMPAIGN_PERFORMANCE_REPORT
WHERE
    Date >= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), WEEK(MONDAY)), INTERVAL 1 MONTH)
AND Date <= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), WEEK(MONDAY)), INTERVAL 0 MONTH);
