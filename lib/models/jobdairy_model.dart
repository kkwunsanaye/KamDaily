class JobDairModel {
  String nameJob, detail;

  JobDairModel(this.nameJob, this.detail);

  JobDairModel.frromJSON(Map<String, dynamic> map) {
    nameJob = map['NameJob'];
    detail = map['Detail'];
  }
}
