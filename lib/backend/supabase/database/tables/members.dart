import '../database.dart';

class MembersTable extends SupabaseTable<MembersRow> {
  @override
  String get tableName => 'members';

  @override
  MembersRow createRow(Map<String, dynamic> data) => MembersRow(data);
}

class MembersRow extends SupabaseDataRow {
  MembersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MembersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get fullName => getField<String>('full_name')!;
  set fullName(String value) => setField<String>('full_name', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  DateTime? get dob => getField<DateTime>('dob');
  set dob(DateTime? value) => setField<DateTime>('dob', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get nationality => getField<String>('nationality');
  set nationality(String? value) => setField<String>('nationality', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  String? get company => getField<String>('company');
  set company(String? value) => setField<String>('company', value);

  String? get industry => getField<String>('industry');
  set industry(String? value) => setField<String>('industry', value);

  int? get experienceYears => getField<int>('experience_years');
  set experienceYears(int? value) => setField<int>('experience_years', value);

  String? get linkedin => getField<String>('linkedin');
  set linkedin(String? value) => setField<String>('linkedin', value);

  String? get founder => getField<String>('founder');
  set founder(String? value) => setField<String>('founder', value);

  String? get mentorInvestor => getField<String>('mentor_investor');
  set mentorInvestor(String? value) =>
      setField<String>('mentor_investor', value);

  String? get leadershipPhilosophy => getField<String>('leadership_philosophy');
  set leadershipPhilosophy(String? value) =>
      setField<String>('leadership_philosophy', value);

  String? get impactGoal => getField<String>('impact_goal');
  set impactGoal(String? value) => setField<String>('impact_goal', value);

  String? get whyJoin => getField<String>('why_join');
  set whyJoin(String? value) => setField<String>('why_join', value);

  String? get communityGoals => getField<String>('community_goals');
  set communityGoals(String? value) =>
      setField<String>('community_goals', value);

  String? get contributions => getField<String>('contributions');
  set contributions(String? value) => setField<String>('contributions', value);

  String? get masterclassExpertise => getField<String>('masterclass_expertise');
  set masterclassExpertise(String? value) =>
      setField<String>('masterclass_expertise', value);

  String? get alignValues => getField<String>('align_values');
  set alignValues(String? value) => setField<String>('align_values', value);

  String? get interests => getField<String>('interests');
  set interests(String? value) => setField<String>('interests', value);

  String? get travelsFrequently => getField<String>('travels_frequently');
  set travelsFrequently(String? value) =>
      setField<String>('travels_frequently', value);

  String? get citiesVisited => getField<String>('cities_visited');
  set citiesVisited(String? value) => setField<String>('cities_visited', value);

  String? get retreatInterest => getField<String>('retreat_interest');
  set retreatInterest(String? value) =>
      setField<String>('retreat_interest', value);

  String? get socialLinks => getField<String>('social_links');
  set socialLinks(String? value) => setField<String>('social_links', value);

  String? get referredBy => getField<String>('referred_by');
  set referredBy(String? value) => setField<String>('referred_by', value);

  String? get referralName => getField<String>('referral_name');
  set referralName(String? value) => setField<String>('referral_name', value);

  String? get referralSource => getField<String>('referral_source');
  set referralSource(String? value) =>
      setField<String>('referral_source', value);

  String? get activeParticipation => getField<String>('active_participation');
  set activeParticipation(String? value) =>
      setField<String>('active_participation', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get status => getField<String>('Status');
  set status(String? value) => setField<String>('Status', value);

  String? get magicLink => getField<String>('magic_link');
  set magicLink(String? value) => setField<String>('magic_link', value);

  DateTime? get lastSeen => getField<DateTime>('last_seen');
  set lastSeen(DateTime? value) => setField<DateTime>('last_seen', value);

  String? get defaultBanner => getField<String>('defaultBanner');
  set defaultBanner(String? value) => setField<String>('defaultBanner', value);

  String? get userBio => getField<String>('userBio');
  set userBio(String? value) => setField<String>('userBio', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
